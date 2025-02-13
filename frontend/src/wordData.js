// sets of utilities to pick words, keep track of history, limit to practice size if desired, etc.

import DictsApi from "./DictsApi";

// pick a random integer between 'from' and 'to', inclusive
function randomInt(from, to) {
  const decimal = Math.random();
  const ret = Math.floor(decimal * (to - from + 1) + from);
  return ret;
}

// limits sample sets of words in order to drill extensively with n words
// set to 0 or null for no limit
let practiceSize = 0;
let practiceWordArray = [];

// save info regarding current word set
let currentWordsetId = null;
let currentNumWords = null;

// stores history of shown words so that user can go back and revisit
let wordArray = [];
let currentWordIndex = null;

// get next word for new card, if have full practice size, pick from that set, ow get a random word
async function chooseNextWord() {
  let word;
  if (practiceSize && practiceWordArray.length == practiceSize) {
    const pick = randomInt(1, practiceSize);
    word = practiceWordArray[pick - 1];
  } else {
    const pick = randomInt(1, currentNumWords);
    word = await DictsApi.getWord(currentWordsetId, pick);
    if (practiceSize) {
      practiceWordArray.push(word);
    }
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
    if (!(pickWord.id == lastWordId || pickWord.id == lastWordId2)) {
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
      currentNumWords = await DictsApi.numWordsInSet(currentWordsetId);
    }
    const word = await chooseNextWordNoRepeats();
    return word;
  }

  // if we're visiting back in history, move forward, ow get a new word & add to history
  static async getNextWord(wordsetId, reverse) {
    // console.log("current index: ", currentWordIndex);
    if (currentWordIndex == null) {
      currentWordIndex = 0;
    } else {
      currentWordIndex++;
    }
    if (currentWordIndex < wordArray.length) {
      const word = wordArray[currentWordIndex];
      return checkReverse(word, reverse);
    } else {
      const word = await this.getAnotherWord(wordsetId);
      wordArray.push(word);
      return checkReverse(word, reverse);
    }
  }

  // we're going back in history, go back one more word
  static async getPreviousWord(wordsetId, reverse) {
    if (currentWordIndex > 0) {
      currentWordIndex--;
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
    practiceSize = 0;
    practiceWordArray = [];
    currentWordsetId = null;
    currentNumWords = null;
    currentWordIndex = null;
    wordArray = [];
  }

  // safe setting of practice size, don't allow < 3 in set
  static setPracticeSize(size) {
    let newSize;
    if (size == null) {
      newSize = 0;
    } else {
      newSize = size >= 3 ? size : 3;
    }
    // console.log("setting practice size: ", newSize);
    practiceSize = newSize;
  }
}

export default wordData;
