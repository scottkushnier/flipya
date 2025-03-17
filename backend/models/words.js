"use strict";

const db = require("../db");

class Word {
  static async pullWord(wordset_id, n) {
    let query = `SELECT * FROM words WHERE wordset_id = $1 OFFSET $2 LIMIT 1`;
    const res = await db.query(query, [wordset_id, n - 1]);
    return res.rows;
  }

  static async addWord(word1, word2, wordset_id) {
    // console.log("add word: ", word1, word2, wordset_id);
    const query =
      "INSERT INTO words (word1, word2, wordset_id) VALUES ($1, $2, $3)";
    const res = await db.query(query, [word1, word2, wordset_id]);
    return res;
  }
}

module.exports = Word;
