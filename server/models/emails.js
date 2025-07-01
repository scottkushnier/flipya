"use strict";

const db = require("../db");
const bcrypt = require("bcryptjs");

class EmailDB {
  static async findAll(username) {
    let query = `SELECT * FROM emails WHERE username = $1`;
    // console.log("find all query: ", query);
    const res = await db.query(query, [username]);
    return res.rows;
  }

  static async find(email) {
    let query = `SELECT * FROM emails WHERE email = $1`;
    // console.log("query: ", query);
    const res = await db.query(query, [email]);
    return res.rows[0];
  }

  static async addEmail(email, username, key) {
    // console.log("add email: ", email, username, key);
    bcrypt.genSalt(10).then((salt) => {
      const pw = key + "-" + email;
      bcrypt.hash(pw, salt).then(async (hash) => {
        const query =
          "INSERT INTO emails (email, status, username, key) VALUES ($1, 'unverified', $2, $3)";
        await db.query(query, [email, username, hash]);
      });
    });
    return "ok";
  }

  static async changeEmailKey(email, key) {
    bcrypt.genSalt(10).then((salt) => {
      const pw = key + "-" + email;
      bcrypt.hash(pw, salt).then(async (hash) => {
        const query = "UPDATE emails SET key = $2 WHERE email = $1";
        await db.query(query, [email, hash]);
      });
    });
    return "ok";
  }

  static async tryVerifyEmail(email, key) {
    // console.log("model: try verify: ", email, key);
    const query = "SELECT * FROM emails WHERE email = $1";
    const res = await db.query(query, [email]);
    const hash = res.rows[0].key;
    // console.log("res: ", res.rows[0]);
    // console.log("hash: ", hash);
    const pw = key + "-" + email;
    const verdict = await bcrypt.compare(pw, hash);
    if (verdict) {
      const query = "UPDATE emails SET status = 'verified' WHERE email = $1";
      // console.log("query: ", query);
      const res = await db.query(query, [email]);
    }
    return verdict;
  }

  static async incAttempts(email) {
    // console.log("inc attemtps for: ", email);
    const query =
      "UPDATE emails SET num_attempts = num_attempts + 1 WHERE email = $1";
    const res = await db.query(query, [email]);
    return res;
  }
}

module.exports = EmailDB;
