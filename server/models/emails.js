"use strict";

const db = require("../db");
const bcrypt = require("bcryptjs");
const EmailAPI = require("./email-api");

function randomWord(n) {
  let acc = "";
  for (let i = 0; i < n; i++) {
    let x = Math.random();
    const c = String.fromCharCode(x * 26 + 97);
    acc += c;
  }
  // console.log("acc: ", acc);
  return acc;
}

const maxEmailVerifyAttempts = 10;

/////////////////////////////////////////////////////////////////

class EmailDB {
  static async findAll(username) {
    let query = `SELECT * FROM emails WHERE username = $1`;
    // console.log("find all query: ", query);
    const res = await db.query(query, [username]);
    return res.rows;
  }

  static async find(email, username) {
    let query = `SELECT * FROM emails WHERE email = $1 AND username = $2`;
    // console.log("query: ", query);
    const res = await db.query(query, [email, username]);
    if (!res || !res.rows.length) {
      return null;
    }
    return res.rows[0];
  }

  static async addEmail(email, username) {
    // console.log("add email: ", email, username, key);
    const query =
      "INSERT INTO emails (email, status, username) VALUES ($1, 'unverified', $2)";
    await db.query(query, [email, username]);
    return "ok";
  }

  static async genEmailKey(email, username) {
    const key = randomWord(10);
    bcrypt.genSalt(10).then((salt) => {
      const pw = key + "-" + email;
      bcrypt.hash(pw, salt).then(async (hash) => {
        const query =
          "UPDATE emails SET key = $2 WHERE email = $1 AND username=$3";
        await db.query(query, [email, hash, username]);
      });
    });
    return key;
  }

  static async incAttempts(email, username) {
    // console.log("inc attemtps for: ", email);
    const query =
      "UPDATE emails SET num_attempts = num_attempts + 1 WHERE email = $1 AND username = $2";
    const res = await db.query(query, [email, username]);
    return res;
  }

  static async getAttempts(email, username) {
    // console.log("get attemtps for: ", email);
    const query =
      "SELECT num_attempts FROM emails WHERE email = $1 AND username = $2";
    // console.log("query: ", query);
    const res = await db.query(query, [email, username]);
    if (!res || !res.rows.length) {
      return 1000;
    }
    return res.rows[0].num_attempts;
  }

  static async sendVerify(email, username) {
    // console.log("sendVerify: ", email);
    const numAttempts = await EmailDB.getAttempts(email, username);
    if (numAttempts >= maxEmailVerifyAttempts) {
      return {
        status: "not ok",
        message: "sorry, too many verification attempts",
      };
    }
    const key = await EmailDB.genEmailKey(email, username);
    // console.log("key: ", key);
    const link =
      "$APP_BASE_URL$" +
      "/?verify=" +
      encodeURIComponent(email) +
      "&key=" +
      key;
    const msg =
      "Please click on the following link or point your web browser to it. Thanks. \n\n" +
      link;
    // console.log("msg: ", msg);
    const sendResult = EmailAPI.sendEmail(
      "scottkushnier@hstreet.com",
      email,
      "verification link",
      msg
    );
    await EmailDB.incAttempts(email, username);
    return { status: "ok" };
  }

  static async tryVerifyEmail(email, key) {
    // console.log("model: try verify: ", email, key);
    if (!email || !key) {
      return false;
    }
    const query = "SELECT * FROM emails WHERE email = $1";
    const res = await db.query(query, [email]);
    if (!res.rows.length) {
      return false;
    }
    const hash = res.rows[0].key;
    // console.log("res: ", res.rows[0]);
    // console.log("hash: ", hash);
    const pw = key + "-" + email;
    const verdict = await bcrypt.compare(pw, hash);
    if (verdict) {
      const query =
        "UPDATE emails SET status = 'verified', key = '' WHERE email = $1";
      // console.log("query: ", query);
      const res = await db.query(query, [email]);
    }
    return verdict;
  }
}

module.exports = EmailDB;
