**FLIPYA**

**FOR DEVELOPERS:**

---

The frontend is built using React JS with VITE.

The backend is built using NODE JS.

The backend relies on a SQL database for word data and user data. The word data cannot be changed by the user. User data can be modified only to the extent of registering new users.

Postmark is used (via API from server) for sending emails out.

Current running on Render [https://flipya.onrender.com/], with database hosted on Supabase.

---

**IMPORTANT FILES**

server/server.js - kicks off the server

server/models/email-api.js - to call Postmark email API to send emails out

server/models/emails.js - get info about emails stored in DB, addresses, whether verified, how many attempts to verify, etc.

server/models/users.js - access to user DB, passwords, emails for each user, etc.

server/models/wordsets.js - get info about word collections by language, card artwork, etc.

server/models/words.js - access to database of words & translations

server/routes/email-api.js - routes corresponding to the above DB lookups

server/routes/emails.js - (see above)

server/routes/users.js - (see above)

server/routes/wordsets.js - (see above)

server/routes/words.js - (see above)

client/src/Card.jsx - to render flash card, front, back, flipping, word transitions, etc. This is all done through props; Console.jsx manipulates the props and Card.jsx makes the card appearance follow suit

client/src/Console.jsx - basic control of process: flipping cards, buttons to show next, previous card, speed control, Go, Stop, etc.

client/src/EmailAPI.jsx - interface to Flipya server for ultimate delivery of emails (via Postmark)

client/src/EmailSession.jsx - all logic related to emails, buttons to verify emails, send emails, check email address syntax, display default email for user, etc.

client/src/FlipyaDB.jsx - all logic for collecting information from server database - for words, users, wordsets, etc.

client/src/Options.jsx - renders controls for various user preferences, wordset selection, difficulty level, new practice set button, etc.

client/src/Verify.jsx - destination web page for when user clicks on emailed verification link - states whether email was verified or now

client/src/wordData.jsx - all logic pertaining to choosing words at random, practice set size, history of cards shown, etc.

---

**.env File**

The following environment variables must be declared for the server side:

DATABASE_URL - reference to supporting DB
JWT_SECRET_KEY - for username/password authentication
PORT - network port for server (maybe not necessary under render.com)
POSTMARK_API_TOKEN - for calling Postmark API to send emails out

---

**SQL Schema Description**

Here: [db-schema.md](https://github.com/scottkushnier/flipya/blob/master/docs/db-schema.md "db-schema.md")

---

**Testing**

    npm test src/*test*
    (from client directory)

---

**Possible Improvements**

- Add more explicit control over card size.

- Have another auto mode where card flips automatically after some pause, then back - but leave user in control of when to show next (or previous) card.

- Upgrade database for more languages and/or better subsets of words used.

- Give "admin" users ability to edit text on cards, delete cards, add cards, etc.

- Add field to word database for transliteration or phonetic spelling. This could be portrayed as appearing as an addition "flip" before reverting to "front".

- Add field to demonstrate "sense" of the word by using it in a sentence. For example, "You need to -watch- that it doesn't boil" vs "I forgot to wear a -watch-". This could be displayed on some sort of extra information window.

---

_Scott Kushnier_, _5/6/25_
