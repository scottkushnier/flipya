// All functions related to drawing flash card properly & animating
//    State variables record "state" of the card, i.e. flipped, scrolled up, down, etc.
//    Props sent down from console tell how card -should- appear, so console (UI) directs card motion.

import { useState } from "react";

// Functions to size fonts properly - longer words should use smaller fonts
//   It's a little tricky, Hebrew vowels don't take extra space
//   Latin 'i' & 'l' don't take as much space as 'm' and 'w'

function looksLikeHebrew(word) {
  const code = word.codePointAt(0);
  if (code >= 1400) {
    return true;
  } else {
    return false;
  }
}

// just count consonants to get width
function hebrewWordWidth(word) {
  let acc = 0;
  for (let i = 0; i < word.length; i++) {
    const code = word.codePointAt(i);
    if (code === 1470) {
      acc++;
    } else if (code <= 1400 || code >= 1488) {
      acc++;
    }
  }
  return acc;
}

function decorateClassHebrew(word) {
  let res;
  const len = hebrewWordWidth(word);
  if (len >= 16) {
    res = "hebrew hebrew-smallest";
  } else if (len >= 13) {
    res = "hebrew hebrew-smaller";
  } else if (len >= 10) {
    res = "hebrew hebrew-small";
  } else {
    res = "hebrew";
  }
  return res;
}

function latinWordWidth(str) {
  let acc = 0.0;
  for (let i = 0; i < str.length; i++) {
    if (str[i] === "i" || str[i] === "l") {
      acc += 0.75;
    } else if (str[i] === "m" || str[i] === "w") {
      acc += 1.33;
    } else {
      acc++;
    }
  }
  return acc;
}

function decorateClassLatin(word) {
  const width = latinWordWidth(word);
  let res;
  // console.log("width: ", width);
  if (width >= 16) {
    res = "latin smallest";
  } else if (width >= 12) {
    res = "latin smaller";
  } else if (width >= 8) {
    res = "latin small";
  } else {
    res = "latin";
  }
  return res;
}

function decorateWord(word) {
  let className;
  if (looksLikeHebrew(word)) {
    className = decorateClassHebrew(word);
  } else {
    className = decorateClassLatin(word);
  }
  return <div className={className}>{word}</div>;
}

/////////////////////////////////////////////////////////////

// Scrolling smoothly between older and newer words is done by having two words associated with
// front of card, one atop another, with a window that allows only one to be visible.
// Y-Transform with transition delay enables smooth scrolling.
// Card can be shown in 3 different configurations:
//    Flipped: just shows foreign word on opposite side of card (unless flipped deck)
//    ShowTopWord: card is showing word on top
//    ShowBottomWord: card is showing word on bottom
//
// For example scrolling for new word (girl -> hello), boy was the word before girl
//
//                -----------                                   -----------
//                |   boy   |                                   |  girl   |
//                -----------         ----------                -----------
//  window ->     |   girl  |   =>    |  girl  |      ------>   |  hello  |
//                -----------         ----------                -----------
//                                    |  hello |
//                                    ----------
//
//                                   immediate switch to        then slow transform up (scroll)
//              ShowBottomWord         ShowTopWord              & ShowBottomWord again
//                                   & change word entries
//                                      -fast-
//

// enum type for Card showing configuration
const Config = {
  ShowTopWord: 1,
  ShowBottomWord: 2,
  Flipped: 3,
};

// show enum type - used for debugging
function showConfig(config) {
  if (config === Config.ShowTopWord) {
    return "show-top-word";
  } else if (config === Config.ShowBottomWord) {
    return "show-bottom-word";
  } else return "flipped";
}

// 'Console' sets card props depending on user interaction
// States store how card is currently configured.
// On rerender if don't coincide, then card is animated & state variables reset to match props
//    flipFn passed down so can flip card when click on it, fn is defined in console, as it's part of UI
function Card({ topWord, bottomWord, flipWord, config, color, flipFn }) {
  const [showingFront, setShowingFront] = useState(config !== Config.Flipped);
  const [showingTop, setshowingTop] = useState(config === Config.ShowTopWord);
  const [cardMessage, setCardMessage] = useState("(click card to flip)");

  // animated flip of card is done through CSS transform with transition time
  const flip = () => {
    const myCard = document.getElementById("myCard");
    if (showingFront) {
      myCard.style.transform = "rotateY(-180deg)";
    } else {
      myCard.style.transform = null;
    }
    setShowingFront(!showingFront); // now state matches prop
    // remove instruction to click card to flip once flipped once
    if (cardMessage) {
      setTimeout(() => {
        setCardMessage("");
      }, 100);
    }
  };

  // similarly animated scroll up or down via CSS
  const slideUp = () => {
    document.getElementById("front-text-box").style.transform =
      "translateY(-9vw)";
    setshowingTop(false);
  };
  const slideDown = () => {
    document.getElementById("front-text-box").style.transform =
      "translateY(0px)";
    setshowingTop(true);
  };

  // on each rerender, check if states match props, if not do animation & reset Card states
  if (
    (config === Config.Flipped && showingFront) ||
    (config !== Config.Flipped && !showingFront)
  ) {
    flip();
  } else if (config === Config.ShowBottomWord && showingTop) {
    // need to show bottom word, but currently showing top, so slide up
    slideUp();
  } else if (config === Config.ShowTopWord && !showingTop) {
    // need to show top word, but bottom currently showing, so slide down
    slideDown();
  }

  return (
    <div className="container" id="myContainer">
      <div
        className="card"
        id="myCard"
        data-testid="card"
        style={
          showingFront
            ? { transform: "rotateY(0deg)" }
            : { transform: "rotateY(-180deg)" }
        }
        onClick={flipFn}
      >
        <div className="showingFront">
          <div className="card-top" style={{ backgroundColor: color }}></div>
          <div className="card-bottom" style={{ backgroundColor: color }}>
            {cardMessage && <div className="card-message"> {cardMessage} </div>}
          </div>
          <div
            className="front-text-box text-box"
            id="front-text-box"
            style={
              showingTop
                ? { transform: "translateY(0px)" }
                : { transform: "translateY(-9vw)" }
            }
          >
            <div className="top-text">{decorateWord(topWord)}</div>
            <div className="bottom-text">{decorateWord(bottomWord)}</div>
          </div>
        </div>
        <div className="back">
          <div className="card-top" style={{ backgroundColor: color }}></div>
          <div className="card-bottom" style={{ backgroundColor: color }}></div>
          <div className="back-text-box text-box">
            <div className="back-text">{decorateWord(flipWord)}</div>
          </div>
        </div>
      </div>
    </div>
  );
}

export { Card, Config, showConfig };
