"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Emails = require("../models/emails");

const router = new express.Router();

router.get("/:email", async function (req, res, next) {
  try {
    const email = await Emails.find(req.params.email);
    return res.json({ email });
  } catch (err) {
    return next(err);
  }
});

router.get("/", async function (req, res, next) {
  try {
    const emails = await Emails.findAll();
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

router.post("/verify/:email", async function (req, res, next) {
  try {
    const emails = await Emails.verifyEmail(req.params.email);
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

router.post("/inc_attempts/:email", async function (req, res, next) {
  try {
    const emails = await Emails.incAttempts(req.params.email);
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

router.post("/:email/:key", async function (req, res, next) {
  try {
    // console.log("new email: ", req.params.email, req.params.key);
    const emails = await Emails.addEmail(req.params.email, req.params.key);
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
