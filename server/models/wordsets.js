"use strict";

const db = require("../db");

class Wordset {
  static async findAll() {
    let query = `SELECT * FROM wordsets WHERE enabled ORDER BY language1, language2, size, theme`;
    const res = await db.query(query);
    return res.rows;
  }

  static async find(wordset_id) {
    let query = `SELECT * FROM wordsets WHERE id = $1`;
    // console.log("query: ", query);
    const res = await db.query(query, [wordset_id]);
    return res.rows[0];
  }

  static async count(wordset_id, minLevel, maxLevel) {
    let query = `SELECT COUNT(*) FROM words WHERE wordset_id = $1 AND LEVEL >= $2 AND LEVEL <= $3`;
    // console.log("query: ", query, wordset_id, minLevel, maxLevel);
    const res = await db.query(query, [wordset_id, minLevel, maxLevel]);
    return res.rows[0];
  }

  static async getMinMax(id) {
    const query =
      "SELECT MIN(level),MAX(level) FROM words WHERE wordset_id = $1";
    const res = await db.query(query, [id]);
    // console.log("res: ", res);
    return res.rows;
  }

  // for setting up DB
  static async addWordSet(id, lang1, lang2, theme, color) {
    const query =
      "INSERT INTO wordsets (id, language1, language2, theme, color) VALUES ($1, $2, $3, $4, $5)";
    const res = await db.query(query, [id, lang1, lang2, theme, color]);
    return res;
  }
}

module.exports = Wordset;
