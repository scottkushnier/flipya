"use strict";

/** Shared config for application; can be required many places. */

require("dotenv").config();

const PORT = +process.env.PORT || 3001;

const DB_TOKEN = process.env.DB_TOKEN;

// Use dev database, testing database, or via env var, production database
function getDatabaseUri() {
  return process.env.NODE_ENV === "test"
    ? "postgresql:///flipya_test"
    : process.env.DATABASE_URL || "postgresql:///flipya";
}

module.exports = {
  PORT,
  getDatabaseUri,
  DB_TOKEN,
};
