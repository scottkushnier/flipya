import "./App.css";
import { useState, useEffect, useRef } from "react";
import { Card, Config } from "./Card";

import FlipyaDB from "./FlipyaDB";
import wordData from "./wordData";
import Options from "./Options";
import Login from "./Login";

let wordsetId = 1;
let reverse = false;

let saveConfig;
let going = false;
let myInterval;

let resetTransitionCount = 0;

// functions to get transform delays depending on speed setting

function newWordTransform(s) {
  // console.log("new word speed: ", s);
  let delay = 950 - 8 * s;
  return "transform " + delay + "ms";
}

function flipCardTransform(s) {
  // console.log("flip card speed: ", s);
  let delay = (1300 - 8 * s) * 0.7;
  return "transform " + delay + "ms";
}

function roundTiming(s) {
  // console.log("round speed: ", s);
  let delay = 5000 - 40 * s;
  return delay;
}

//---------------------------------------------------------------------------------

function Console() {
  // States here become props in Card & Options elements
  const [topWord, setTopWord] = useState("");
  const [bottomWord, setBottomWord] = useState("(hit NEXT to begin)");
  const [flipWord, setFlipWord] = useState("(hit NEXT to begin)");
  const [config, setConfig] = useState(Config.ShowBottomWord);
  const [cardColor, setCardColor] = useState("green");
  const [auto, setAuto] = useState(false);
  const [speed, setSpeed] = useState(50);
  const [loggedIn, setLoggedIn] = useState(false);

  // save refs since don't want to work with outdated values
  const topWordRef = useRef();
  topWordRef.current = topWord;
  const bottomWordRef = useRef();
  bottomWordRef.current = bottomWord;
  const configRef = useRef();
  configRef.current = config;
  const speedRef = useRef();
  speedRef.current = speed;

  const handleSpeedChange = (e) => {
    e.preventDefault();
    // console.log("speed: ", e.target.value);
    const speed = e.target.value;
    setSpeed(() => speed);
    let myCard = document.getElementById("myCard");
    myCard.style.transition = flipCardTransform(speed);
    const myTextBox = document.getElementById("front-text-box");
    myTextBox.style.transition = newWordTransform(speed);
  };

  // const restoreNewWordTransform = () => {
  //   const myTextBox = document.getElementById("front-text-box");
  //   myTextBox.style.transition = newWordTransform(speed);
  // };

  // initially set color for card properly
  useEffect(() => {
    // console.log("getting color");
    FlipyaDB.getWordSet(wordsetId).then((wordset) => {
      setCardColor(wordset.color);
    });
  }, []);

  // to flip card, just set state var, propogated prop values will cause rerender & animation
  const flipBack = () => {
    if (auto) {
      return;
    }
    setConfig(saveConfig);
  };

  const flip = () => {
    if (auto) {
      return;
    }
    if (configRef.current === Config.Flipped) {
      setConfig(saveConfig);
    } else {
      saveConfig = configRef.current;
      setConfig(Config.Flipped);
    }
  };

  const nextWord = () => {
    let frontConfig = configRef.current;
    // if doing next when card is flipped, then flip back & then do right
    if (frontConfig === Config.Flipped) {
      flip();
      frontConfig = saveConfig;
      const delay = (1300 - 8 * speedRef.current) * 0.7;
      setTimeout(nextWord, delay);
      return;
    }
    // next when showing bottom word, need to do fancy footwork to make smooth scroll
    if (frontConfig === Config.ShowBottomWord) {
      const myTextBox = document.getElementById("front-text-box");
      const saveTransform = myTextBox.style.transition;
      myTextBox.style.transition = "transform 0ms";
      setTopWord(bottomWordRef.current);
      setConfig(Config.ShowTopWord);
      wordData.getNextWord(wordsetId, reverse).then((word) => {
        setBottomWord(word.word1);
        setTimeout(() => {
          myTextBox.style.transition = saveTransform;
          setConfig(Config.ShowBottomWord);
        }, 50);
        setTimeout(() => {
          setFlipWord(word.word2);
        }, 500);
      });
    } else {
      // if was showing top word, then just scroll back to position...
      setConfig(Config.ShowBottomWord);
      // ... but make sure flip word matches
      wordData.getNextWord(wordsetId, reverse).then((word) => {
        setFlipWord(word.word2);
      });
    }
  };

  const backOneWord = () => {
    if (wordData.noMoreHistory()) {
      return;
    }
    let frontConfig = configRef.current;
    // if doing prev when card is flipped, then flip back & then do right
    if (frontConfig === Config.Flipped) {
      flip();
      frontConfig = saveConfig;
      const delay = (1300 - 8 * speedRef.current) * 0.7;
      setTimeout(backOneWord, delay);
      return;
    }
    // prev when showing top word, need to do fancy footwork to make smooth scroll -downward-
    if (frontConfig === Config.ShowTopWord) {
      const myTextBox = document.getElementById("front-text-box");
      const saveTransform = myTextBox.style.transition;
      myTextBox.style.transition = "transform 0ms";
      setBottomWord(topWord);
      setConfig(Config.ShowBottomWord);
      wordData.getPreviousWord(wordsetId, reverse).then((word) => {
        setTopWord(word.word1);
        setTimeout(() => {
          myTextBox.style.transition = saveTransform;
          setConfig(Config.ShowTopWord);
        }, 50);
        setTimeout(() => {
          setFlipWord(word.word2);
        }, 500);
      });
    } else {
      // if was showing bottom word, then just scroll back to position...
      setConfig(Config.ShowTopWord);
      // .. but make sure flipped word matches
      wordData.getPreviousWord(wordsetId, reverse).then((word) => {
        setFlipWord(word.word2);
      });
    }
  };

  // do one round of showing card, flipping to show reverse,
  //  & flip again to show front again
  const doRound = () => {
    flip();
    setTimeout(() => {
      if (going) {
        flipBack();
      }
    }, roundTiming(speedRef.current));
    setTimeout(() => {
      if (going) {
        nextWord();
      }
    }, roundTiming(speedRef.current) * 1.5);
  };

  const stopGo = () => {
    if (!auto) {
      // special logic if just starting word set & hit GO
      if (bottomWord === "(hit NEXT to begin)") {
        nextWord();
        setTimeout(() => {
          going = true;
          doRound();
          myInterval = setInterval(
            doRound,
            roundTiming(speedRef.current) * 2.5
          );
        }, 2000);
        setAuto(!auto);
        return;
      }
      // if showing top & hit GO, then scroll up first
      if (configRef.current === Config.ShowTopWord) {
        setConfig(Config.ShowBottomWord);
      }
      // then just keep calling doRound on interval timer until STOP button pressed
      going = true;
      doRound();
      console.log("starting interval");
      myInterval = setInterval(doRound, roundTiming(speedRef.current) * 2.5);
    } else {
      going = false;
      clearInterval(myInterval);
      console.log("stopping interval");
    }
    setAuto(!auto);
  };

  // clear & get ready for new word set
  function newWordSetFunction(id, reverseVal, practiceSize) {
    wordData.clearWordInfo();
    wordData.setPracticeSize(practiceSize);
    // console.log("new set function: ", id, reverseVal);
    setConfig(Config.ShowBottomWord);
    setBottomWord("(hit NEXT to begin)");
    setFlipWord("(hit NEXT to begin)");
    wordsetId = id;
    reverse = reverseVal;
    FlipyaDB.getWordSet(wordsetId).then((wordset) => {
      setCardColor(wordset.color);
    });
  }

  // on flip deck, fade out one language & fade in other language
  // need special logic depending if showing top or bottom word

  function flipDeckBottom() {
    let myBottomText = document.getElementsByClassName("bottom-text")[0];
    // console.log("bottom text: ", myBottomText);
    myBottomText.transition = "opacity 500ms ease-out";
    myBottomText.style.opacity = 0;
    myBottomText.transition = "opacity 0ms";
    setTimeout(() => {
      myBottomText.transition = "opacity 500ms ease-in";
    }, 25);
    setTimeout(() => {
      setConfig(Config.ShowBottomWord);
      let saveBottom = bottomWord;
      setBottomWord(flipWord);
      setFlipWord(saveBottom);
      myBottomText.style.opacity = 1;
    }, 550);
    // console.log("top word: ", topWordRef.current);
    wordData.getPreviousWord(wordsetId, reverse).then((word) => {
      // console.log("prev word: ", word);
      if (word) {
        setTopWord(word.word2);
        wordData.getNextWord(wordsetId, reverse);
      }
    });
    reverse = !reverse;
  }

  function flipDeckTop() {
    let myTopText = document.getElementsByClassName("top-text")[0];
    // console.log("top text: ", myTopText);
    myTopText.transition = "opacity 500ms ease-out";
    myTopText.style.opacity = 0;
    myTopText.transition = "opacity 0ms";
    setTimeout(() => {
      myTopText.transition = "opacity 500ms ease-in";
    }, 25);
    setTimeout(() => {
      setConfig(Config.ShowTopWord);
      let saveTop = topWord;
      setTopWord(flipWord);
      setFlipWord(saveTop);
      myTopText.style.opacity = 1;
    }, 550);
    wordData.getNextWord(wordsetId, reverse).then((word) => {
      // console.log("next word: ", word);
      setBottomWord(word.word2);
      wordData.getPreviousWord(wordsetId, reverse);
    });
    reverse = !reverse;
  }

  function flipDeck() {
    // console.log("config:flip: ", showConfig(configRef.current));
    if (configRef.current === Config.ShowBottomWord) {
      flipDeckBottom();
    } else {
      flipDeckTop();
    }
  }

  // first check if card is flipped, then flip back & then flip deck
  function flipDeckGeneral() {
    // console.log("config:gen: ", showConfig(configRef.current));
    if (configRef.current === Config.Flipped) {
      flip();
      const delay = (1300 - 8 * speedRef.current) * 0.7;
      setTimeout(flipDeck, delay);
      return;
    } else {
      flipDeck();
    }
  }

  function resetTransition(count) {
    // console.log("reset transition", count);
    if (count === resetTransitionCount) {
      // console.log("reset transition for real");
      const myTextBox = document.getElementById("front-text-box");
      myTextBox.style.transition = newWordTransform(speedRef.current);
    }
  }

  const enterFn = () => {
    // console.log("calling enter function");
    setLoggedIn(true);
  };

  window.addEventListener("resize", function (event) {
    // Code to execute when the window is resized
    // console.log("Window has been resized");
    // You can access the new window dimensions using:
    // console.log("New width:", newWidth, "New height:", newHeight);
    const myTextBox = document.getElementById("front-text-box");
    if (myTextBox) {
      myTextBox.style.transition = "transform 0ms";
      resetTransitionCount++;
      const i = resetTransitionCount;
      (function close(i) {
        setTimeout(() => {
          resetTransition(i);
        }, 500);
      })(i);
    }
  });

  if (!loggedIn) {
    return <Login enterFn={enterFn} />;
  } else {
    return (
      <>
        <div className="main">
          <div className="console">
            <h2 className="title"> FLIP YA! </h2>
            <Card
              topWord={topWord}
              bottomWord={bottomWord}
              flipWord={flipWord}
              config={config}
              color={cardColor}
              flipFn={flip}
            />
            {!auto ? (
              <div className="prev-next-row">
                <button onClick={backOneWord} className="prev-button">
                  PREV
                </button>
                <button
                  onClick={nextWord}
                  className="next-button"
                  id="next-button"
                >
                  NEXT
                </button>
              </div>
            ) : null}
            {auto ? (
              <div className="go-row">
                <button onClick={stopGo} className="stop-button">
                  STOP
                </button>
              </div>
            ) : (
              <div className="go-row">
                <button onClick={stopGo} className="go-button">
                  GO
                </button>
              </div>
            )}
            {!auto ? (
              <form>
                <div className="speed-row">
                  <label htmlFor="speed" className="speed-label">
                    Speed
                  </label>
                  <input
                    type="range"
                    className="speed-input"
                    id="speed"
                    name="speed"
                    min="1"
                    max="100"
                    value={speed}
                    onChange={handleSpeedChange}
                  />
                </div>
              </form>
            ) : (
              <div style={{ height: "6vw" }}> </div>
            )}
          </div>
          <Options
            newSetFn={newWordSetFunction}
            flipDeck={flipDeckGeneral}
            auto={auto}
          />
        </div>
      </>
    );
  }
}

export default Console;
