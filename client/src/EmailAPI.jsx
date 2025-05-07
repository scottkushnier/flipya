import axios from "axios";
import { authHeader } from "./FlipyaDB";

// const BASE_URL = "http://" + window.location.hostname + ":3001";

// const BASE_URL =
//   process.env.REACT_APP_DB_BASE_URL || "http://192.168.5.129:3001";

const BASE_URL =
  process.env.NODE_ENV === "test" || window.location.hostname.includes("render")
    ? ""
    : "http://192.168.5.129:3001";

class EmailAPI {
  static async request(endpoint, data, headers) {
    console.debug("EMAIL API Call here:", endpoint, data);
    const url = `${BASE_URL}/${endpoint}`;
    try {
      const ret = await axios.post(url, data, { headers: headers });
      console.debug("ret: ", ret);
      return ret;
    } catch (err) {
      console.error("Email API Error:", err.response);
      let message = err.response.data.error.message;
      return { message };
    }
  }

  static async sendEmail(from, to, subject, body) {
    const data = { From: from, To: to, Subject: subject, TextBody: body };
    const endpoint = "email-api";
    // console.log("auth: ", authHeader);
    const ret = await this.request(endpoint, data, authHeader);
    // console.log("ret @ emailAPI: ", ret);
    return ret;
  }
}

export default EmailAPI;
