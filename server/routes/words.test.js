process.env.NODE_ENV = "test";

const request = require("supertest");
const app = require("../app.js");
const db = require("../db.js");

describe("words testing", function () {
  test("get a word", async function () {
    const resp = await request(app).get(`/word/2/5`);
    expect(resp.body).toEqual({
      word: [{ id: 5, word1: "house", word2: "maison", wordset_id: 2 }],
    });
    // console.log(resp.body);
    db.end();
  });
});
