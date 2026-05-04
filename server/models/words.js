"use strict";

const db = require("../db");

class Word {
  static async pullWord(wordset_id, n, minLevel, maxLevel) {
    let query = `SELECT * FROM words WHERE wordset_id = $1 AND LEVEL >= $2 AND LEVEL <= $3 OFFSET $4 LIMIT 1`;
    // console.log("query: ", query);
    // console.log("params: ", wordset_id, minLevel, maxLevel, n - 1);
    const res = await db.query(query, [wordset_id, minLevel, maxLevel, n - 1]);
    if (process.env.NODE_ENV !== "test") {
      console.log("From DB: ", res.rows[0].word1, "-", res.rows[0].word2);
    }
    return res.rows;
  }

  static async getWordById(id) {
    let query = `SELECT * FROM words WHERE id = $1 LIMIT 1`;
    // console.log("query: ", query);
    // console.log("params: ", wordset_id, minLevel, maxLevel, n - 1);
    const res = await db.query(query, [id]);
    return res.rows;
  }

  // used to fill DB
  static async addWord(word1, word2, wordset_id, level) {
    // console.log("add word: ", word1, word2, wordset_id);
    const query =
      "INSERT INTO words (word1, word2, wordset_id, level) VALUES ($1, $2, $3, $4)";
    const res = await db.query(query, [word1, word2, wordset_id, level]);
    return res;
  }

  // modify existing word in dictionaries
  static async modWord(word1, word2, wordId) {
    // console.log("mod word: ", word1, word2, wordId);
    const query = "UPDATE words SET word1 = $1, word2 = $2 WHERE id = $3";
    const res = await db.query(query, [word1, word2, wordId]);
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
