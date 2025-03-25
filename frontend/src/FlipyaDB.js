// API For FlipYa app
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

import axios from "axios";

// require("dotenv").config();

// const DB_BASE_URL = process.env.DB_BASE_URL || "http://192.168.5.129:3001";

// const DB_BASE_URL = "http://192.168.5.129:3001";

//  const DB_BASE_URL = process.env.REACT_APP_DB_BASE_URL;

const DB_BASE_URL = "http://" + window.location.hostname + ":3001";

// const DB_BASE_URL = "http://localhost:3001";

const DB_TOKEN = process.env.REACT_APP_DB_TOKEN;

class FlipyaDB {
  static async request(endpoint, method = "get", headers = {}) {
    console.log(`url: ${DB_BASE_URL}`);
    console.log("API Call:", endpoint, method);
    const url = `${DB_BASE_URL}/${endpoint}`;
    try {
      return (await axios({ url, method, headers })).data;
    } catch (err) {
      console.error("API Error:", err.response);
      let message = err.response.data.error.message;
      throw Array.isArray(message) ? message : [message];
    }
  }

  // get all wordset data, handy for building selection menu in UI
  static async getWordSets() {
    const res = await this.request("wordset");
    console.log("get word sets");
    console.log("return: ", res.wordsets);
    return res.wordsets;
  }

  static async getWordSet(n) {
    const res = await this.request(`wordset/${n}`);
    console.log("get word set: ", n);
    console.log("return: ", res.wordset);
    return res.wordset;
  }

  // get exact count of words in a particular set, needed to pick a random word properly
  static async numWordsInSet(set_id) {
    const res = await this.request(`wordset/${set_id}/count`);
    return res.count;
  }

  // get nth word from one of wordsets
  static async getWord(wordset_id, n) {
    const res = await this.request(`word/${wordset_id}/${n}`);
    return res.word[0];
  }

  static async getAllEmails() {
    const res = await this.request("email/", "GET", { token: DB_TOKEN });
    return res;
  }

  static async getEmail(email) {
    const res = await this.request(`email/${email}`, "GET", {
      token: DB_TOKEN,
    });
    // console.log("get email returning: ", res.email);
    return res.email;
  }

  static async addEmail(email, key) {
    const res = await this.request(`email/${email}/${key}`, "POST", {
      token: DB_TOKEN,
    });
    return res;
  }

  // mark email address as verified
  static async verifyEmail(email) {
    // console.log("dictapi verify: ", email);
    const res = await this.request(`email/verify/${email}`, "POST", {
      token: DB_TOKEN,
    });
    return res;
  }

  static async incAttempts(email) {
    const res = await this.request(`email/inc_attempts/${email}`, "POST", {
      token: DB_TOKEN,
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
