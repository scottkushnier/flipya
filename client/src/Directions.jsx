import Navbar from "./Navbar";

function Directions() {
  return (
    <>
      <Navbar user="dummy" page="directions" />
      <div class="directions-section">
        <h2> Flipya! Directions </h2>
        <p class="directions">
          Flipya! is a web-based application designed to emulate the process of
          learning through flash cards. Although flash cards can used to aid in
          many different kinds of memorization tasks, the main intent here was
          for foreign language (vocabulary) learning.
        </p>
        <br />
        <h4>Manual mode: </h4>
        <p>
          Manual mode gives the user complete control of the flash card
          "action". Click on the card to flip the card over and to flip it back.
          Click the "Next" button to forward to the next card in the deck. Click
          the "Prev" button to go back in the deck. A complete history is
          maintained - back to the first card shown.
        </p>
        <h4>Automatic mode:</h4>
        <p>
          Automatic mode is controlled with the "Go" and "Stop" buttons. A new
          card will be presented, pause, flip the card, pause, and flip back.
          Then the next card is presented and the process is repeated.{" "}
        </p>
        <h4>Speed:</h4>
        <p>
          Controls speed of card flipping, transitions to new and old cards, and
          length of pauses when running in automatic mode.
        </p>
        <h4>Flip Deck:</h4>
        <p>
          This option control whether "front" of card is displayed first or
          "back". For example, for an English to French word set, a word in
          English would be displayed, flipping the card would show the
          translation into French. If flip-deck where selected, then the word in
          French would be shown first. Flipping would show the translation into
          English. This represents the difference between "production" and
          "understanding" in language learning.
        </p>
        <h4>Difficulty Range:</h4>
        <p>
          These represent upper and lower bounds on difficulty of words shown.
          Initial values are determined by the word set in question. The user
          can then adjust for more or less difficulty in the practice session.
        </p>
        <h4>Practice Set Size:</h4>
        <p>
          A user can select a set-size to practice. This would limit the number
          of words that would be chosen from. Once all words in the set have
          been seen once, following words would be random repetition from that
          limited set. If this option is unchecked, then the entire word set
          (within difficulty bounds) is fair game.
        </p>
        <h4>Next Set:</h4>
        <p>
          The Next-Set button allows the user to start with a new practice set -
          or just plain start over, clearing the history of cards.
        </p>
        <h4>Email Session:</h4>
        <p>
          The user has the ability to send an email containing all the words
          seen so far in the current practice set.
        </p>
        <h4>Login & Logout:</h4>{" "}
        <p>
          Users need to register and associate a password with their account for
          future logins. A user need not associate an email address with their
          profile; however, this would be necessary in order to have session
          information sent via email.
        </p>
      </div>
    </>
  );
}

export default Directions;
