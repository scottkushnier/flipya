process.env.NODE_ENV = "test";

const request = require("supertest");
const app = require("../app.js");
const db = require("../db.js");

describe("wordset testing", function () {
  test("get all wordsets", async function () {
    const resp = await request(app).get(`/wordset`);
    // console.log(resp.body);
    expect(resp.body.wordsets.length).toEqual(7);
    // db.end();
  });
  test("check one wordset", async function () {
    const resp = await request(app).get(`/wordset/7`);
    expect(resp.body).toEqual({
      wordset: {
        id: 7,
        language1: "English",
        language2: "Hebrew",
        theme: "3000",
        color: "#0038B6",
        enabled: true,
        size: 3000,
      },
    });
  });
  test("check wordset count", async function () {
    const resp = await request(app).get(`/wordset/14/count`);
    // console.log(resp.body);
    expect(+resp.body.count).toEqual(1000);
    db.end();
  });
});
