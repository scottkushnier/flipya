process.env.NODE_ENV = "test";

const request = require("supertest");
const app = require("../app.js");
const db = require("../db.js");

describe("emails testing", function () {
  test("get all emails", async function () {
    const resp = await request(app).get(`/email`);
    // console.log(resp.body);
    expect(resp.body.emails.length).toEqual(4);
  });
  test("check one email", async function () {
    const resp = await request(app).get(`/email/kushnier@filefiche.me`);
    expect(resp.body).toEqual({
      email: {
        id: 78,
        email: "kushnier@filefiche.me",
        status: "unverified",
        num_attempts: 2,
        key: "pzkcszdpno",
      },
    });
  });
  test("post a new email & verify it", async function () {
    const resp = await request(app).post("/email/foo@foo.com/acegi");
    // console.log(resp.body);
    expect(resp.body).toEqual({ msg: "added" });
    const resp2 = await request(app).get(`/email/foo@foo.com`); // check that unverified as yet
    expect(resp2.body.email.status).toEqual("unverified");
    const resp3 = await request(app).post("/email/verify/foo@foo.com");
    expect(resp3.body).toEqual({ msg: "verified" });
    const resp4 = await request(app).get(`/email/foo@foo.com`); // check that now verified
    expect(resp4.body.email.status).toEqual("verified");
    const query = "DELETE FROM emails WHERE email = $1";
    const res = await db.query(query, ["foo@foo.com"]);
    db.end();
  });
});
