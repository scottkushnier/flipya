"use strict";

const express = require("express");
const Wordset = require("../models/wordsets");

const router = new express.Router();

// return all wordset info
router.get("/", async function (req, res, next) {
  try {
    const wordsets = await Wordset.findAll();
    return res.json({ wordsets });
  } catch (err) {
    return next(err);
  }
});

// return info for particular wordset
router.get("/:id", async function (req, res, next) {
  try {
    const wordset = await Wordset.find(req.params.id);
    return res.json({ wordset });
  } catch (err) {
    return next(err);
  }
});

// count how many words in a wordset within difficulty range
router.get("/:id/count", async function (req, res, next) {
  try {
    const count = await Wordset.count(
      req.params.id,
      req.query.minLevel,
      req.query.maxLevel
    );
    return res.json(count);
  } catch (err) {
    return next(err);
  }
});

// get minimum & maximum difficulty levels of words in a wordset
router.get("/:id/minmax", async function (req, res, next) {
  try {
    const minMax = await Wordset.getMinMax(req.params.id);
    return res.json(minMax);
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
