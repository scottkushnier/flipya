import axios from "axios";

const BASE_URL =
  process.env.REACT_APP_DB_BASE_URL || "http://192.168.5.129:3001";

const DB_TOKEN = process.env.REACT_APP_DB_TOKEN;

class EmailAPI {
  static async request(endpoint, data, headers) {
    console.debug("EMAIL API Call:", endpoint, data);
    const url = `${BASE_URL}/${endpoint}`;
    try {
      return (await axios.post(url, data, { headers: headers })).data;
    } catch (err) {
      console.error("Email API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  static async sendEmail(from, to, subject, body) {
    const data = { From: from, To: to, Subject: subject, TextBody: body };
    const endpoint = "email-api";
    return this.request(endpoint, data, { token: DB_TOKEN });
  }
}

export default EmailAPI;
