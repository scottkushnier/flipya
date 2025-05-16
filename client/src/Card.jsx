// All functions related to drawing flash card properly & animating
//    State variables record "state" of the card, i.e. flipped, scrolled up, down, etc.
//    Props sent down from console tell how card -should- appear, so console (UI) directs card motion.

import { useState, useEffect } from "react";

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

// Code to execute when the window is resized
//  don't want slow mo transitions

let resetTransitionCount = 0;

// 'Console' sets card props depending on user interaction
// States store how card is currently configured.
// On rerender if don't coincide, then card is animated & state variables reset to match props
//    flipFn passed down so can flip card when click on it, fn is defined in console, as it's part of UI
function Card({
  topWord,
  bottomWord,
  flipWord,
  config,
  color,
  flipSpeed,
  scrollSpeed,
  fadeOut,
  quickChange,
  flipFn,
}) {
  const [showingFront, setShowingFront] = useState(config !== Config.Flipped);
  const [showingTop, setShowingTop] = useState(config === Config.ShowTopWord);
  const [cardMessage, setCardMessage] = useState("(click card to flip)");
  const [abrupt, setAbrupt] = useState(false); // scroll speed - fast for window size change

  // console.log("fadeOut: ", fadeOut);

  const resetTransition = (count) => {
    if (count === resetTransitionCount) {
      // console.log("reset transition for real");
      setAbrupt(false);
    }
  };

  // if resize window, we don't want slow scrolling, just change everything quick
  const wrapWithQuickTransition = () => {
    setAbrupt(() => true); // removes delays used for smooth scrolling
    resetTransitionCount++; // then put back after 1/2 sec - from last resize event
    const i = resetTransitionCount;
    (function close(i) {
      setTimeout(() => {
        resetTransition(i);
      }, 500);
    })(i);
  };

  useEffect(() => {
    window.addEventListener("resize", wrapWithQuickTransition);
    return () => {
      window.removeEventListener("resize", wrapWithQuickTransition);
    };
  }, []);

  // animated flip of card is done through CSS transform with transition time
  const flip = () => {
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
    setShowingTop(false);
  };
  const slideDown = () => {
    setShowingTop(true);
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
        style={{
          transform: showingFront ? "rotateY(0deg)" : "rotateY(-180deg)",
          transition: flipSpeed,
        }}
        // style={
        //     transform: {showingFront ? "rotateY(0deg)" : "rotateY(-180deg)"},
        //   ,
        //    transition: flipCardTransform(speed)
        // }
        onClick={flipFn}
      >
        <div className="showingFront">
          <div className="card-top" style={{ backgroundColor: color }}></div>
          <div className="card-bottom" style={{ backgroundColor: color }}>
            {cardMessage && <div className="card-message"> {cardMessage} </div>}
          </div>
          <div
            className={
              "front-text-box text-box " +
              (showingTop ? "front-text-box-up" : "front-text-box-down")
            }
            id="front-text-box"
            style={{
              transition: abrupt || quickChange ? "transform 0ms" : scrollSpeed,
            }}
          >
            <div className="top-text" style={{ opacity: fadeOut ? 0 : 1 }}>
              {decorateWord(topWord)}
            </div>
            <div className="bottom-text" style={{ opacity: fadeOut ? 0 : 1 }}>
              {decorateWord(bottomWord)}
            </div>
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
