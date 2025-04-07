"use strict";

const db = require("../db");

class EmailDB {
  static async findAll() {
    let query = `SELECT * FROM emails`;
    // console.log("query: ", query);
    const res = await db.query(query, []);
    return res.rows;
  }

  static async find(email) {
    let query = `SELECT * FROM emails WHERE email = $1`;
    // console.log("query: ", query);
    const res = await db.query(query, [email]);
    return res.rows[0];
  }

  static async addEmail(email, key) {
    const query =
      "INSERT INTO emails (email, status, key) VALUES ($1, 'unverified', $2)";
    const res = await db.query(query, [email, key]);
    return res;
  }

  static async verifyEmail(email) {
    const query = "UPDATE emails SET status = 'verified' WHERE email = $1";
    // console.log("query: ", query);
    const res = await db.query(query, [email]);
    return res;
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
