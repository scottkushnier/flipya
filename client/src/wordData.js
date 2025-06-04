// sets of utilities to pick words, keep track of history, limit to practice size if desired, etc.

import FlipyaDB from "./FlipyaDB";

import { saveWordArrayInLS, saveWordIndexInLS } from "./localStorage";

// pick a random integer between 'from' and 'to', inclusive
function randomInt(from, to) {
  const decimal = Math.random();
  const ret = Math.floor(decimal * (to - from + 1) + from);
  return ret;
}

// limits sample sets of words in order to drill extensively with n words
// set to 0 or null for no limit
let practiceSetSize = 0;

// save info regarding current word set
let currentWordsetId = null;
let currentNumWords = null;

// stores history of shown words so that user can go back and revisit
let wordArray = [];
let currentWordIndex = null;

let noRandom = false;
let count = 1;

const DEFAULT_MIN_LEVEL = 1;
const DEFAULT_MAX_LEVEL = 9;

// minimum & maximum difficulty range of words displayed, changeable by UI
let minLevel = DEFAULT_MIN_LEVEL;
let maxLevel = DEFAULT_MAX_LEVEL;

// get next word for new card, if have full practice size, pick from that set, ow get a random word
async function chooseNextWord() {
  let word;
  if (noRandom) {
    word = await FlipyaDB.getWord(currentWordsetId, count, minLevel, maxLevel);
    if (count < currentNumWords) {
      count++;
    }
    return word;
  }
  // console.log("practicesize: ", practiceSize);
  if (practiceSetSize && wordArray && wordArray.length >= practiceSetSize) {
    const pick = randomInt(1, practiceSetSize);
    word = wordArray[pick - 1];
  } else {
    const pick = randomInt(1, currentNumWords);
    // console.log("get word: ", currentWordsetId, pick, minLevel, maxLevel);
    word = await FlipyaDB.getWord(currentWordsetId, pick, minLevel, maxLevel);
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
  // if having trouble finding non-redundant words, give up after like 25 tries
  while (count < 25) {
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

class wordData {
  static async getAnotherWord(wordsetId) {
    if (!currentWordsetId) {
      currentWordsetId = wordsetId;
      // console.log("num words: ", currentWordsetId, minLevel, maxLevel);
      currentNumWords = await FlipyaDB.numWordsInSet(
        currentWordsetId,
        minLevel,
        maxLevel
      );
      // console.log("num: ", currentNumWords);
      if (+currentNumWords === 0) {
        // might happen if "holes" in levels
        currentWordsetId = 0;
        return {
          word1: "(no word in range)",
          word2: "(no word in range)",
          id: 0,
        };
      }
      // console.log("num words: ", currentNumWords);
    }
    const word = await chooseNextWordNoRepeats();
    return word;
  }

  static modWordLevels(min, max) {
    currentWordsetId = 0;
    minLevel = min;
    maxLevel = max;
  }

  // if we're visiting back in history, move forward, ow get a new word & add to history
  static async getNextWord(wordsetId, reverse) {
    // console.log("current index: ", currentWordIndex);
    if (currentWordIndex == null) {
      currentWordIndex = 0;
    } else {
      currentWordIndex++;
    }
    saveWordIndexInLS(currentWordIndex);
    if (currentWordIndex < wordArray.length) {
      const word = wordArray[currentWordIndex];
      return checkReverse(word, reverse);
    } else {
      const word = await this.getAnotherWord(wordsetId);
      wordArray.push(word);
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
    practiceSetSize = 0;
    currentWordsetId = null;
    currentNumWords = null;
    currentWordIndex = null;
    wordArray = [];
  }

  static fillWordInfo(a, i) {
    currentWordIndex = 0;
    // console.log("fill: ", a);
    // console.log("index: ", i);
    if (a) {
      currentNumWords = wordArray.length;
      wordArray = a;
      currentWordIndex = i;
    } else {
      wordArray = [];
      currentNumWords = 0;
    }
  }

  // safe setting of practice size, don't allow < 3 in set, unless 0 (no limit)
  static setPracticeSize(size) {
    let newSize;
    if (size === 0) {
      newSize = 0;
    } else {
      newSize = size >= 3 ? size : 3;
    }
    // console.log("setting practice size: ", newSize);
    practiceSetSize = newSize;
  }

  static getSessionWordArray() {
    return wordArray;
  }

  static async generateEmailTextForSession() {
    // console.log("composing...");
    let acc = "";
    const d = new Date();
    acc += "FlipYa Session @ \n" + d.toUTCString() + "\n\n";
    if (currentWordsetId) {
      const wordSet = await FlipyaDB.getWordSet(currentWordsetId);
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
