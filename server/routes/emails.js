"use strict";

const express = require("express");
const jwt = require("jsonwebtoken");
const { JWT_SECRET_KEY } = require("../config");
const Emails = require("../models/emails");

const router = new express.Router();

// middleware - check Token for protected routes

function checkToken(req, res, next) {
  if (process.env.NODE_ENV === "test") {
    // console.log("no token checking during testing...");
    next();
  } else {
    // console.log("checking token...");
    if (!jwt.verify(req.headers.token, JWT_SECRET_KEY)) {
      console.error("bad token:", req.headers.token);
      return res.json({ msg: "bad token" });
    }
    next();
  }
}

//////////////////////////////////////////////////////////////////////////

// get details for particular email address
router.get("/:email", async function (req, res, next) {
  try {
    const email = await Emails.find(req.params.email);
    return res.json({ email });
  } catch (err) {
    return next(err);
  }
});

// get list of all email addresses
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

// mark email as verified
router.post("/verify/:email", async function (req, res, next) {
  try {
    const emails = await Emails.verifyEmail(req.params.email);
    return res.json({ msg: "verified" });
  } catch (err) {
    return next(err);
  }
});

// count # attempts & will max out if too high
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

// add new email to DB & save random key too
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
