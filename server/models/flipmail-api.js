const axios = require("axios");

// Using Flipmail email API
const BASE_URL = process.env.EMAIL_URL;
const FLIPMAIL_TOKEN = process.env.FLIPMAIL_API_TOKEN;
const APP_BASE_URL = process.env.APP_BASE_URL;

class EmailAPI {
  static async request(endpoint, data, headers) {
    // console.debug("EMAIL API Call:", endpoint, data, headers);
    const url = `${BASE_URL}/${endpoint}`;
    // console.log("url: ", url);
    // console.log("data: ", data);
    // console.log("headers: ", headers);
    try {
      return (await axios.post(url, data, { headers: headers })).data;
    } catch (err) {
      console.error("Email API Error:", err.response.data);
      //  console.error("API Error");
      if (err.response.data.includes("Unavailable")) {
        return "unavailable";
      } else {
        return "error";
      }
    }
  }

  static async sendEmail(from, to, subject, body) {
    const headers = {
      "Content-Type": "application/json",
      Accept: "application/json",
      "X-Flipmail-Username": "scottkushnier",
      // "X-Flipmail-Username": "doug",
      "X-Flipmail-Api": FLIPMAIL_TOKEN,
    };
    const newBody = body.replace("$APP_BASE_URL$", APP_BASE_URL);
    // console.log("token :", FLIPMAIL_TOKEN);
    const data = { From: from, To: to, Subject: subject, TextBody: newBody };
    const endpoint = "flipmail/email";
    return this.request(endpoint, data, headers)
      .then((ret) => {
        console.log("ret @ server: ", ret);
        return ret;
      })
      .catch((err) => {
        console.log("err @ server: ", err);
        return err;
      });
  }
}

module.exports = EmailAPI;
