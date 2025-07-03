import axios from "axios";

class EmailAPI {
  static async request(endpoint, data, headers) {
    // console.debug("EMAIL API Call here:", endpoint, data);
    const url = `/${endpoint}`;
    try {
      const ret = await axios.post(url, data, { headers: headers });
      // console.debug("ret: ", ret);
      return ret;
    } catch (err) {
      console.error("Email API Error:", err.response);
      let message = err.response.data.error.message;
      return { message };
    }
  }

  static async sendEmail(from, to, subject, body) {
    const data = { From: from, To: to, Subject: subject, TextBody: body };
    const endpoint = "api/email-api";
    const ret = await this.request(endpoint, data);
    // console.log("ret @ emailAPI: ", ret);
    return ret;
  }
}

export default EmailAPI;
