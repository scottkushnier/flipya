// sets of utilities to pick words, keep track of history, limit to practice size if desired, etc.

import FlipyaDB from "./FlipyaDB";

import {
  saveWordArrayInLS,
  getWordArrayFromLS,
  saveWordIndexInLS,
  getWordIndexFromLS,
} from "./localStorage";

// pick a random integer between 'from' and 'to', inclusive
function randomInt(from, to) {
  const decimal = Math.random();
  const ret = Math.floor(decimal * (to - from + 1) + from);
  // console.log("pick: ", ret);
  return ret;
}

// limits sample sets of words in order to drill extensively with n words
// set to null for no limit
let practiceSetSize = null;

// save info regarding current word set
let currentWordsetId = null;
let wordsetPoolSize = null; // how many words available in set for min & max difficulty

// stores history of shown words so that user can go back and revisit
let wordArray = [];
let currentWordIndex = null;

// minimum & maximum difficulty range of words displayed, changeable by UI
const DEFAULT_MIN_LEVEL = 1;
const DEFAULT_MAX_LEVEL = 9;
let minLevel = DEFAULT_MIN_LEVEL;
let maxLevel = DEFAULT_MAX_LEVEL;

// switch to turn off randomness, for testing
let noRandom = false;
let count = 1;

async function chooseNextWordNoRandom() {
  console.log("no random");
  const word = await FlipyaDB.getWord(
    currentWordsetId,
    count,
    minLevel,
    maxLevel
  );
  if (count < wordsetPoolSize) {
    count++;
  }
  return word;
}

// get next word for new card, if have full practice size, pick from that set, ow get a random word
async function chooseNextWord() {
  if (noRandom) {
    return chooseNextWordNoRandom();
  }
  let word;
  if (practiceSetSize && wordArray && wordArray.length >= practiceSetSize) {
    // have our practice pool, pick from pool
    const pick = randomInt(1, practiceSetSize);
    word = wordArray[pick - 1];
    // console.log(
    //   "choosing from practice set: size: ",
    //   practiceSetSize,
    //   " pick: ",
    //   pick
    // );
  } else {
    // pick from all available for difficulty range in set
    const pick = randomInt(1, wordsetPoolSize);
    // console.log(
    //   "choosing word at random: pool size: ",
    //   wordsetPoolSize,
    //   "wordset: ",
    //   currentWordsetId,
    //   "pick, min-level, max-level: ",
    //   pick,
    //   minLevel,
    //   maxLevel
    // );
    word = await FlipyaDB.getWord(currentWordsetId, pick, minLevel, maxLevel);
    word.cardIndex = wordArray.length + 1; // only set if original word, not if taking from practice set
  }
  return word;
}

// make sure don't give same word again right after & not same as two words ago
let lastWordId = -1;
let lastWordId2 = -1;

// choose next word, but don't exact choose same word again, or word before that
async function chooseNextWordNoRepeats() {
  // console.log("choose new word");
  let pickWord;
  let count = 0;
  // if having trouble finding non-redundant words, give up after like 10 tries
  while (count < 10) {
    pickWord = await chooseNextWord();
    // console.log("pickword: ", pickWord);
    if (!(pickWord.id === lastWordId || pickWord.id === lastWordId2)) {
      lastWordId2 = lastWordId;
      lastWordId = pickWord.id;
      return pickWord;
    }
    count++;
  }
  return pickWord;
}

// if deck is flipped [practice comprehension, not production] (i.e. flip over to see language1, not language2)
function checkReverse(word, reverse) {
  if (!reverse) {
    return word;
  } else {
    const ret = { ...word, word1: word.word2, word2: word.word1 };
    return ret;
  }
}

function maxToPracticeSize(n) {
  if (practiceSetSize) {
    return n > practiceSetSize ? practiceSetSize : n;
  } else return n;
}

class wordData {
  static async getAnotherWord(wordsetId) {
    // if not inited for wordset yet, then do it now
    if (!currentWordsetId) {
      currentWordsetId = wordsetId;
      wordsetPoolSize = await FlipyaDB.numWordsInSet(
        currentWordsetId,
        minLevel,
        maxLevel
      );
      // console.log(
      //   "pool for: ",
      //   currentWordsetId,
      //   minLevel,
      //   maxLevel,
      //   " -> ",
      //   wordsetPoolSize
      // );
    }
    // could have 'empty pool' if difficulty levels don't jive with wordset data
    if (wordsetPoolSize === 0) {
      return {
        word1: "(no word in range)",
        word2: "(no word in range)",
        id: 0,
      };
    }
    const word = await chooseNextWordNoRepeats();
    return word;
  }

  static modWordLevels(min, max) {
    currentWordsetId = 0; // will trigger 'get pool size' when need a new word, don't do just yet because 'hard' to figure pool size
    minLevel = min;
    maxLevel = max;
  }

  // if we're visiting back in history, move forward, ow get a new word & add to history
  static async getNextWord(wordsetId, reverse) {
    // console.log("getNextWord, wordsetid: ", wordsetId);
    if (currentWordIndex == null) {
      currentWordIndex = 0;
    } else {
      currentWordIndex++;
    }
    saveWordIndexInLS(currentWordIndex);
    if (currentWordIndex < wordArray.length) {
      // if we're back in history, just pluck out past word
      const word = wordArray[currentWordIndex];
      word.totWords = maxToPracticeSize(wordArray.length);
      return checkReverse(word, reverse);
    } else {
      // ow, will need to dig deep for another word
      const word = await this.getAnotherWord(wordsetId);
      wordArray.push(word);
      word.totWords = maxToPracticeSize(wordArray.length);
      saveWordArrayInLS(wordArray);
      return checkReverse(word, reverse);
    }
  }

  // we're going back in history, go back one more word
  static async getPreviousWord(wordsetId, reverse) {
    if (currentWordIndex > 0) {
      currentWordIndex--;
      saveWordIndexInLS(currentWordIndex);
      const word = wordArray[currentWordIndex];
      word.totWords = maxToPracticeSize(wordArray.length);
      return checkReverse(word, reverse);
    } else {
      return null;
    }
  }

  // going back in history, we're at the first word
  static noMoreHistory() {
    return !currentWordIndex;
  }

  // starting over, clear all cached data
  static clearWordInfo() {
    practiceSetSize = null;
    currentWordsetId = null;
    wordsetPoolSize = null;
    currentWordIndex = null;
    wordArray = [];
    saveWordArrayInLS(null);
    saveWordIndexInLS(null);
  }

  static fillWordInfo(a, i) {
    // console.log("refill words: ", i, a);
    if (a) {
      wordArray = a;
      currentWordIndex = i;
      // set 'y' for x/y card indices - do it now when refilling since some values in local storage will be old
      // console.log("alen: ", a.length, "prac: ", practiceSetSize);
      const len = a[a.length - 1].totWords; // last in array will have correct value, replicate across all cards
      // console.log("len: ", len);
      for (const w of a) {
        w.totWords = len;
      }
    } else {
      wordArray = [];
      currentWordIndex = null;
    }
  }

  static refillWordData() {
    const a = getWordArrayFromLS();
    let i = getWordIndexFromLS();
    // console.log("i: ", i);
    if (a && i >= a.length) {
      i--;
    }
    wordData.fillWordInfo(a, i);
    if (a) {
      return { word: a[i], lastWord: i > 0 ? a[i - 1] : null };
    } else return null;
  }

  // safe setting of practice size, don't allow < 3 in set, unless 0 (no limit)
  static setPracticeSize(size) {
    let newSize;
    if (size === 0) {
      newSize = null;
    } else {
      newSize = size >= 3 ? size : 3;
    }
    // console.log("setting practice size: ", newSize);
    practiceSetSize = newSize;
  }

  static async generateEmailTextForSession() {
    // console.log("composing...");
    let acc = "";
    const d = new Date();
    acc += "FlipYa Session @ \n" + d.toUTCString() + "\n\n";
    if (wordArray) {
      const wordSet = await FlipyaDB.getWordSet(wordArray[0].wordset_id);
      acc += wordSet.language1 + ", " + wordSet.language2 + "\n\n";
      if (practiceSetSize) {
        acc += "(Practice Set Size: " + practiceSetSize + ")\n\n";
        wordArray.slice(0, practiceSetSize).forEach((word) => {
          acc += word.word1 + ", " + word.word2 + "\n";
        });
      } else {
        wordArray.forEach((word) => {
          acc += word.word1 + ", " + word.word2 + "\n";
        });
      }
      return acc;
    } else {
      return acc;
    }
  }
}

export default wordData;
