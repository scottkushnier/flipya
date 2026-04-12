const axios = require("axios");

const BASE_URL = process.env.EMAIL_API_HOST;
const APP_TOKEN = process.env.EMAIL_API_TOKEN;
const APP_BASE_URL = process.env.APP_BASE_URL;
const EMAIL_ENDPOINT = process.env.EMAIL_API_ENDPOINT;

class EmailAPI {
  static async request(data, headers) {
    // console.debug("EMAIL API Call:", data, headers);
    const url = `${BASE_URL}/${EMAIL_ENDPOINT}`;
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
      //   "X-Postmark-Server-Token": POSTMARK_TOKEN,
      "X-Flipmail-Username": process.env.EMAIL_API_USERNAME,
      "X-Flipmail-Api": process.env.EMAIL_API_TOKEN,
    };
    const newBody = body.replace("$APP_BASE_URL$", APP_BASE_URL);
    // console.log("token :", POSTMARK_TOKEN);
    const data = { From: from, To: to, Subject: subject, TextBody: newBody };
    return this.request(data, headers)
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
