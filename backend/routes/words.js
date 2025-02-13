"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Word = require("../models/words");

const router = new express.Router();

router.get("/:wordset_id/:n", async function (req, res, next) {
  try {
    const q = req.query;
    const word = await Word.pullWord(req.params.wordset_id, req.params.n);
    return res.json({ word });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
