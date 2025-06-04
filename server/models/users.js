"use strict";

const db = require("../db");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const { BCRYPT_WORK_FACTOR, JWT_SECRET_KEY } = require("../config");

async function sleep(delay) {
  return new Promise((res) => {
    setTimeout(() => res(), delay);
  });
}

class Users {
  // static async findAll() {
  //   let query = `SELECT * FROM users`;
  //   const res = await db.query(query);
  //   return res.rows;
  // }

  static async find(username) {
    let query = `SELECT * FROM users WHERE username = $1`;
    // console.log("query: ", query);
    const res = await db.query(query, [username]);
    if (res.rows.length) {
      const user = res.rows[0];
      delete user.password; // caller doesn't need this
      return user;
    } else {
      await sleep(200);
      return null;
    }
  }

  static async register(username, password) {
    let query =
      "INSERT INTO users (username, password, wordset_id, set_size) VALUES ($1, $2, 0, 0)";
    const hashedPassword = await bcrypt.hash(password, BCRYPT_WORK_FACTOR);
    try {
      // console.log("query: ", query);
      const insertRes = await db.query(query, [username, hashedPassword]);
      query = "SELECT * FROM users WHERE username = $1";
      const lookupRes = await db.query(query, [username]);
      const user = lookupRes.rows[0];
      const token = jwt.sign({ username: user.username }, JWT_SECRET_KEY);
      user.token = token;
      return user;
    } catch (e) {
      // console.log("db error: ", e);
      return null;
    }
  }

  static async login(username, password) {
    let query = "SELECT * FROM users WHERE username = $1";
    // console.log("query: ", query);
    try {
      const res = await db.query(query, [username]);
      if (res.rows.length) {
        // console.log("found user --: ", res.rows[0]);
        const user = res.rows[0];
        const pw_res = await bcrypt.compare(password, user.password);
        // console.log("pw-res: ", pw_res);
        if (pw_res) {
          // console.log("password good");
          delete user.password;
          const token = jwt.sign({ username }, JWT_SECRET_KEY);
          user.token = token;
          return user;
        } else {
          // console.log("password bad");
          return "bad password";
        }
      } else {
        // console.log("no such user");
        return "no such user";
      }
    } catch (e) {}
  }

  static async restoreSession(username) {
    let query = "SELECT * FROM users WHERE username = $1";
    // console.log("query: ", query);
    try {
      const res = await db.query(query, [username]);
      if (res.rows.length) {
        // console.log("found user --: ", res.rows[0]);
        const user = res.rows[0];
        delete user.password;
        // const token = jwt.sign({ username }, JWT_SECRET_KEY);
        // user.token = token;
        return user;
      } else {
        // console.log("no such user");
        return "no such user";
      }
    } catch (e) {}
  }

  static async logout(username) {}

  static async updateEmail(username, email) {
    try {
      let query = "UPDATE users SET email = $2 WHERE username = $1";
      const res = await db.query(query, [username, email]);
      return res;
    } catch (e) {}
  }

  static async updateSetSize(username, size) {
    try {
      let query = "UPDATE users SET set_size = $2 WHERE username = $1";
      // console.log("query: ", query);
      const res = await db.query(query, [username, size]);
      return res;
    } catch (e) {}
  }

  static async updateWordSetId(username, id) {
    try {
      let query = "UPDATE users SET wordset_id = $2 WHERE username = $1";
      // console.log("query: ", query);
      const res = await db.query(query, [username, id]);
      return res;
    } catch (e) {}
  }
}

module.exports = Users;
