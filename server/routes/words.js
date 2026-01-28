"use strict";

const express = require("express");
const Word = require("../models/words");

const router = new express.Router();

// get nth word from wordset within a difficulty range (specified by get query parameters)
router.get("/:wordset_id/:n", async function (req, res, next) {
  try {
    const word = await Word.pullWord(
      req.params.wordset_id,
      req.params.n,
      req.query.minLevel,
      req.query.maxLevel
    );
    return res.json({ word });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
