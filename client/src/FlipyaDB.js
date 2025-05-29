// API For FlipYa app database
// Gets information re wordset dictionaries that provide data for flash cards
//  also keeps track of verified email addresses for sending session info

// Wordset object:
//    id: index key, one unique per word set
//    language1: nominal language for words on fronts of cards
//    language2: nominal language for words on backs of cards
//    theme: succint description of set (e.g. 1000 common words, words handy for tourists, etc.)
//    color: background color of cards in this set - differentiates sets clearly & easily and make it look interesting
//    enabled: flag - tells whether FlipYa should include this set for possible user choice (some sets are for testing font sizes, minimal sizes for testing, etc.)
//    size: approx size of set, 10,100,1000,3000 etc., currently only used in sorting for selection menu

// Word object:
//    id: index key, each card gets unique id
//    word1: a word in 'language1'
//    word2: translation into 'language2'
//    wordset_id: wordset that this card is part of

// Email object:
//    id: index
//    email: email address as string (e.g. "bob@tdbank.com")
//    status: "verified" or "unverified", string type - to leave door open for other statuses
//    num_attempts: number of times user has tried to verify this email - limited attempts possible
//    key: random character string - used to prevent unauthorized emails

// User object:
//    username:
//    password: hashed pw
//    email: associated email address
//    wordset_id: last wordset used
//    last practice set size used

import axios from "axios";

import axiosMock from "./axios-mock";

// console.log("hostname: ", window.location.hostname);

// const DB_BASE_URL = process.env.DB_BASE_URL || "http://192.168.5.129:3001";

// const DB_BASE_URL =
//   process.env.NODE_ENV === "test" || window.location.hostname.includes("render")
//     ? ""
//     : "http://192.168.5.129:3001";

const DB_BASE_URL = "";

//  const DB_BASE_URL = process.env.REACT_APP_DB_BASE_URL;
// const DB_BASE_URL = "http://localhost:3001";
// "http://" + window.location.hostname + ":3001";
// const DB_BASE_URL =
// const DB_BASE_URL = "";

// let DB_BASE_URL = "";

// DB_BASE_URL =
//   process.env.VITE_REACT_APP_DB_BASE_URL ||
//   "https://" + window.location.hostname;

// DB_BASE_URL =
//   process.env.VITE_REACT_APP_DB_BASE_URL ||
//   "https://" + window.location.hostname;

// if (process.env.NODE_ENV !== "test") {
//   DB_BASE_URL =
//     import.meta.env.VITE_REACT_APP_DB_BASE_URL ||
//     "https://" + window.location.hostname;
// } else {
//   DB_BASE_URL =
//     process.env.VITE_REACT_APP_DB_BASE_URL ||
//     "https://" + window.location.hostname;
// }

// console.log("env: ", process.env.NODE_ENV);

class FlipyaDB {
  static async request(endpoint, method = "get", data = {}, headers = {}) {
    if (process.env.NODE_ENV === "test") {
      // console.log("calling axios from within test: ", endpoint);
      const res = await axiosMock.request(endpoint, method, data, headers);
      // if (!res) {
      //   process.exit();
      // } else {
      // console.log("mock return: ", res);
      return res;
      // }
    }
    // console.log(`url: ${DB_BASE_URL}`);
    // console.log("API Call:", endpoint, method, data);
    const url = `${DB_BASE_URL}/${endpoint}`;
    try {
      return (await axios({ url, method, data, headers })).data;
    } catch (err) {
      console.error("API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  // get all wordset data, handy for building selection menu in UI
  static async getWordSets() {
    const res = await this.request("api/wordset");
    // console.log("get word sets");
    // console.log("return: ", res.wordsets);
    return res.wordsets;
  }

  static async getWordSet(n) {
    const res = await this.request(`api/wordset/${n}`);
    // console.log("get word set: ", n);
    // console.log("return: ", res.wordset);
    return res.wordset;
  }

  // get exact count of words in a particular set, needed to pick a random word properly
  // restrict to difficulty range selected
  static async numWordsInSet(set_id, minLevel, maxLevel) {
    const res = await this.request(
      `api/wordset/${set_id}/count?minLevel=${minLevel}&maxLevel=${maxLevel}`
    );
    return res.count;
  }

  // find difficulty range for particular wordset
  static async minMaxForSet(set_id) {
    const res = await this.request(`api/wordset/${set_id}/minmax`);
    // console.log("res: ", res);
    return res[0];
  }

  // get nth word from one of wordsets
  static async getWord(wordset_id, n, minLevel, maxLevel) {
    const res = await this.request(
      `api/word/${wordset_id}/${n}?minLevel=${minLevel}&maxLevel=${maxLevel}`
    );
    return res.word[0];
  }

  static async getAllEmails() {
    const res = await this.request("api/email", "GET", {});
    return res;
  }

  static async getEmail(email) {
    const res = await this.request(`api/email/${email}`, "GET", {});
    // console.log("get email returning: ", res.email);
    return res.email;
  }

  static async addEmail(email, key) {
    const res = await this.request(`api/email/${email}/${key}`, "POST", {});
    return res;
  }

  static async changeEmailKey(email, key) {
    const res = await this.request(`api/email/${email}/${key}`, "PATCH", {});
    return res;
  }

  static async tryVerifyEmail(email, key) {
    console.log("try verify: ", email, key);
    const res = await this.request(
      `api/email/tryverify/${email}/${key}`,
      "GET",
      {}
    );
    return res;
  }

  // mark email address as verified
  static async verifyEmail(email) {
    // console.log("dictapi verify: ", email);
    const res = await this.request(`api/email/verify/${email}`, "POST", {});
    return res;
  }

  static async incAttempts(email) {
    const res = await this.request(
      `api/email/inc_attempts/${email}`,
      "POST",
      {}
    );
    return res;
  }

  static async getUser(username) {
    const res = await this.request(`api/users/${username}`);
    return res;
  }

  static async login(username, password) {
    const res = await this.request("api/users/login", "POST", {
      username,
      password,
    });
    // console.log("login res: ", res);
    return res;
  }

  static async register(username, password) {
    // console.log("registering: ", username);
    const res = await this.request("api/users/register", "POST", {
      username,
      password,
    });
    // console.log("res: ", res);
    return res;
  }

  static async restoreSession(username) {
    const res = await this.request("api/users/restore-session", "POST", {
      username,
    });
    return res;
  }

  static async logout(username) {
    const res = await this.request("api/users/logout", "POST", {
      username,
    });
    return res;
  }

  static async updateEmail(username, email) {
    // console.log("updating email for ", username, " to ", email);
    const res = await this.request(`api/users/${username}/email`, "POST", {
      email,
    });
    return res;
  }

  static async updateSetSize(username, size) {
    // console.log("updating set-size for ", username, " to ", size);
    const res = await this.request(`api/users/${username}/setsize`, "POST", {
      setsize: size,
    });
    return res;
  }

  static async updateWordsetId(username, id) {
    // console.log("updating wordset id for ", username, " to ", id);
    const res = await this.request(`api/users/${username}/wordsetid`, "POST", {
      id,
    });
    return res;
  }

  // for testing, might want to include delays to see how App reacts
  static async delay(secs) {
    return new Promise((res) => {
      setTimeout(res, secs * 1000);
    });
  }
}

export default FlipyaDB;
