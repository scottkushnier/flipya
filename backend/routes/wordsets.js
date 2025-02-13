"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Wordset = require("../models/wordsets");

const router = new express.Router();

router.get("/", async function (req, res, next) {
  try {
    const wordsets = await Wordset.findAll();
    return res.json({ wordsets });
  } catch (err) {
    return next(err);
  }
});

router.get("/:id", async function (req, res, next) {
  try {
    const wordset = await Wordset.find(req.params.id);
    return res.json({ wordset });
  } catch (err) {
    return next(err);
  }
});

router.get("/:id/count", async function (req, res, next) {
  try {
    const q = req.query;
    const count = await Wordset.count(req.params.id);
    return res.json(count);
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
