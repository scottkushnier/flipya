"use strict";

const express = require("express");
const Word = require("../models/words");

const router = new express.Router();

// get nth word from wordset within a difficulty range (specified by get query parameters)
router.get("/:wordset_id/:n", async function (req, res, next) {
  // console.log("req-query: ", req.query);
  try {
    const word = await Word.pullWord(
      req.params.wordset_id,
      req.params.n,
      req.query.minLevel,
      req.query.maxLevel,
    );
    return res.json({ word });
  } catch (err) {
    return next(err);
  }
});

router.get("/:id", async function (req, res, next) {
  // console.log("req-query: ", req.query);
  try {
    const word = await Word.getWordById(req.params.id);
    return res.json({ word });
  } catch (err) {
    return next(err);
  }
});

router.post("/:id", async function (req, res, next) {
  try {
    const modResult = await Word.modWord(
      req.body.word1,
      req.body.word2,
      req.params.id,
    );
    // console.log(
    //   "route: modword: ",
    //   req.body.word1,
    //   req.body.word2,
    //   req.params.id,
    // );
    // const modResult = "ok";
    return res.json(modResult);
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
