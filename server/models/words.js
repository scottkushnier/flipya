"use strict";

const db = require("../db");

class Word {
  static async pullWord(wordset_id, n, minLevel, maxLevel) {
    let query = `SELECT * FROM words WHERE wordset_id = $1 AND LEVEL >= $2 AND LEVEL <= $3 OFFSET $4 LIMIT 1`;
    const res = await db.query(query, [wordset_id, minLevel, maxLevel, n - 1]);
    if (process.env.NODE_ENV !== "test") {
      console.log("From DB: ", res.rows[0].word1, "-", res.rows[0].word2);
    }
    return res.rows;
  }

  // used to fill DB
  static async addWord(word1, word2, wordset_id) {
    // console.log("add word: ", word1, word2, wordset_id);
    const query =
      "INSERT INTO words (word1, word2, wordset_id) VALUES ($1, $2, $3)";
    const res = await db.query(query, [word1, word2, wordset_id]);
    return res;
  }

  // used in setting up DB
  static async setWordLevel(word1, level) {
    const query = "UPDATE words SET level = $2 WHERE word1 = $1";
    // console.log("query: ", query);
    const res = await db.query(query, [word1, level]);
    return res;
  }
}

module.exports = Word;
