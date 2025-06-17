let count = 0;

class AxiosMock {
  static async request(endpoint, method = "get", data = {}, headers = {}) {
    console.log(`AxiosMock: ${endpoint}, ${method}, ${data}, ${headers}`);
    if (endpoint === "api/users") {
      return { users: [] };
    } else if (endpoint === "api/wordset") {
      return {
        wordsets: [
          {
            id: 1,
            language1: "English",
            language2: "Italian",
            theme: "1000",
          },
        ],
      };
    } else if (endpoint === "api/wordset/1") {
      return {
        wordset: {
          id: 1,
          language1: "English",
          language2: "Italian",
          theme: "1000",
        },
      };
    } else if (endpoint.includes("wordset/1/count")) {
      return {
        count: 50,
      };
    } else if (endpoint.includes("word/1/")) {
      count++;
      if (count == 1) {
        return {
          word: [
            {
              word1: "boy",
              word2: "garcon",
              wordset_id: 1,
              id: 52,
            },
          ],
        };
      } else if (count == 2) {
        return {
          word: [
            {
              word1: "man",
              word2: "homme",
              wordset_id: 1,
              id: 54,
            },
          ],
        };
      }
    } else if (endpoint === "api/wordset/1/minmax") {
      return [{ min: 1, max: 5 }];
    } else if (endpoint === "api/users/register") {
      // console.log("registering: ", data.username);
      return {
        username: data.username,
        token: "yip",
        wordset_id: 0,
        set_size: 0,
      };
    } else if (endpoint === "api/email") {
      return { emails: [] };
    } else if (endpoint === "api/users/test") {
      return {
        user: {
          username: "test",
          wordset_id: 0,
          set_size: 0,
        },
      };
    } else if (endpoint === "api/users/test/wordsetid") {
      return 1;
    }
  }
}

export default AxiosMock;
