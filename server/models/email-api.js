const axios = require("axios");

// Using Postmark email API
const BASE_URL = process.env.EMAIL_URL || "https://api.postmarkapp.com";
const POSTMARK_TOKEN = process.env.POSTMARK_API_TOKEN;

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
      //     console.error("Email API Error:", err.response);
      //  console.error("API Error");
      let message = err.response.data.Message;
      return { message };
    }
  }

  static async sendEmail(from, to, subject, body) {
    const headers = {
      "Content-Type": "application/json",
      Accept: "application/json",
      "X-Postmark-Server-Token": POSTMARK_TOKEN,
    };
    // console.log("token :", POSTMARK_TOKEN);
    const data = { From: from, To: to, Subject: subject, TextBody: body };
    const endpoint = "email";
    this.request(endpoint, data, headers)
      .then((ret) => {
        // console.log("ret @ server: ", ret);
        return ret;
      })
      .catch((err) => {
        // console.log("err @ server: ", err);
        return err;
      });
  }
}

module.exports = EmailAPI;
