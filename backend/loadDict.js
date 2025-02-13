const fs = require("fs");
const db = require("./db");
const Word = require("./models/words");
const Wordset = require("./models/wordsets");

async function readDict(filename, id) {
  const promises = [];
  fs.readFile(filename, "utf8", async (err, data) => {
    if (err) {
      console.log("readDict error: ", err);
    } else {
      console.log("data:");
      const lines = data.split(/\r?\n/);
      const [lang1, lang2] = lines[0].split(",");
      const [theme, color] = lines[1].split(",");
      console.log(lang1, lang2, theme, color);
      let promise = Wordset.addWordSet(id, lang1, lang2, theme, color);
      promises.push(promise);
      lines.forEach((line, i) => {
        // console.log(`Line from file: ${line}`);
        if (line) {
          const pieces = line.split(",");
          if (i > 1) {
            console.log(`piece 1: '${pieces[0]}', piece 2: '${pieces[1]}'`);
            let promise = Word.addWord(pieces[0], pieces[1], id);
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

readDict(process.argv[2], process.argv[3]);
