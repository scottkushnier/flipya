"use strict";

const express = require("express");

const { BadRequestError } = require("../expressError");
const Emails = require("../models/emails");

const router = new express.Router();

const { DB_TOKEN } = require("../config.js");

function checkToken(req, res, next) {
  if (process.env.NODE_ENV === "test") {
    // console.log("no token checking during testing...");
    next();
  } else {
    console.log("checking token...");
    if (req.headers.token !== DB_TOKEN) {
      // console.error("bad token:", req.headers.token, "  ", DB_TOKEN);
      return res.json({ emails: [] });
    }
    next();
  }
}

router.get("/:email", async function (req, res, next) {
  try {
    const email = await Emails.find(req.params.email);
    return res.json({ email });
  } catch (err) {
    return next(err);
  }
});

router.get("/", checkToken, async function (req, res, next) {
  try {
    // console.log("all emails req h: ", req.headers);
    // console.log("expecting token: ", DB_TOKEN);
    const emails = await Emails.findAll();
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

router.post("/verify/:email", checkToken, async function (req, res, next) {
  try {
    const emails = await Emails.verifyEmail(req.params.email);
    return res.json({ msg: "verified" });
  } catch (err) {
    return next(err);
  }
});

router.post(
  "/inc_attempts/:email",
  checkToken,
  async function (req, res, next) {
    try {
      const emails = await Emails.incAttempts(req.params.email);
      return res.json({ msg: "updated attempts" });
    } catch (err) {
      return next(err);
    }
  }
);

router.post("/:email/:key", checkToken, async function (req, res, next) {
  try {
    // console.log("new email: ", req.params.email, req.params.key);
    const emails = await Emails.addEmail(req.params.email, req.params.key);
    return res.json({ msg: "added" });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
