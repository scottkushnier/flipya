import axios from "axios";

const BASE_URL =
  process.env.REACT_APP_DB_BASE_URL || "http://192.168.5.129:3001";

class EmailAPI {
  static async request(endpoint, data) {
    console.debug("EMAIL API Call:", endpoint, data);
    const url = `${BASE_URL}/${endpoint}`;
    try {
      return (await axios.post(url, data)).data;
    } catch (err) {
      console.error("Email API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  static async sendEmail(from, to, subject, body) {
    const data = { From: from, To: to, Subject: subject, TextBody: body };
    const endpoint = "email-api";
    return this.request(endpoint, data);
  }
}

export default EmailAPI;
