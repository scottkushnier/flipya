"use strict";

/** Shared config for application; can be required many places. */

require("dotenv").config();

const PORT = +process.env.PORT || 3001;
const BCRYPT_WORK_FACTOR = 12;
const JWT_SECRET_KEY = process.env.JWT_SECRET_KEY;

// Use dev database, testing database, or via env var, production database
function getDatabaseUri() {
  return process.env.NODE_ENV === "test"
    ? "postgresql:///flipya_test"
    : process.env.DATABASE_URL || "postgresql:///flipya";
}

module.exports = {
  PORT,
  getDatabaseUri,
  BCRYPT_WORK_FACTOR,
  JWT_SECRET_KEY,
};
