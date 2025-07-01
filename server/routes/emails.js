"use strict";

const express = require("express");

const Emails = require("../models/emails");

const router = new express.Router();

const checkToken = require("../middleware.js");

//////////////////////////////////////////////////////////////////////////

// get details for particular email address
router.get("/:email", checkToken, async function (req, res, next) {
  try {
    const email = await Emails.find(req.params.email);
    return res.json({ email });
  } catch (err) {
    return next(err);
  }
});

// get list of all email addresses for -username-
router.get("/list/:username", checkToken, async function (req, res, next) {
  try {
    // console.log("all emails req h: ", req.headers);
    // console.log("expecting token: ", DB_TOKEN);
    const emails = await Emails.findAll(req.params.username);
    return res.json({ emails });
  } catch (err) {
    return next(err);
  }
});

router.get("/verify/:email/:key", async function (req, res, next) {
  try {
    const verdict = await Emails.tryVerifyEmail(
      req.params.email,
      req.params.key
    );
    return res.json(verdict);
  } catch (err) {
    return next(err);
  }
});

// mark email as verified
// no auth token because coming from verification page
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
router.post(
  "/:email/:username/:key",
  checkToken,
  async function (req, res, next) {
    try {
      // console.log("new email: ", req.params.email, req.params.key);
      const emails = await Emails.addEmail(
        req.params.email,
        req.params.username,
        req.params.key
      );
      return res.json({ msg: "added" });
    } catch (err) {
      return next(err);
    }
  }
);

router.patch("/:email/:key", checkToken, async function (req, res, next) {
  try {
    // console.log("new email: ", req.params.email, req.params.key);
    const emails = await Emails.changeEmailKey(
      req.params.email,
      req.params.key
    );
    return res.json({ msg: "changed" });
  } catch (err) {
    return next(err);
  }
});

module.exports = router;
