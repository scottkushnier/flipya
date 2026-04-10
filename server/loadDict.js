const fs = require("fs");
const db = require("./db");
const Word = require("./models/words");
const Wordset = require("./models/wordsets");

async function readDict(filename) {
  const promises = [];
  fs.readFile(filename, "utf8", async (err, data) => {
    if (err) {
      console.log("readDict error: ", err);
    } else {
      console.log("data:");
      const lines = data.split(/\r?\n/);

      const langs = lines[0].split(",");
      const numLangs = langs.length - 1;
      const ids = lines[1].split(",");
      const colors = lines[2].split(",");
      const themes = lines[3].split(",");
      const levels = lines[4].split(",");
      console.log("languages: ", langs, "(", numLangs, ")");
      console.log("ids: ", ids);
      console.log("colors: ", colors);
      console.log("themes: ", themes);
      console.log("levels: ", levels);
      for (let i = 0; i < numLangs; i++) {
        console.log(
          "Wordset: ",
          langs[0],
          langs[i + 1],
          ids[i],
          themes[i],
          colors[i]
        );
        let promise = Wordset.addWordSet(
          ids[i],
          langs[0],
          langs[i + 1],
          themes[i],
          colors[i]
        );
        promises.push(promise);
      }
      lines.forEach((line, i) => {
        if (line && i > 5) {
          console.log(`Line from file: ${line}`);
          const pieces = line.split(",");
          for (let i = 0; i < numLangs; i++) {
            console.log(
              `word: `,
              pieces[0],
              " -> ",
              pieces[i + 1],
              `(${ids[i]})`
            );
            let promise = Word.addWord(
              pieces[0],
              pieces[i + 1],
              ids[i],
              levels[i]
            );
            promises.push(promise);
          }
        }
      });
    }
    await Promise.all(promises);
    console.log("all done");
    db.end();
  });
}

readDict(process.argv[2]);
