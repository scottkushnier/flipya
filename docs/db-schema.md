Scott Kushnier   
5/5/2025                                                                                                       

**SQL DATABASE SCHEMA**

---

_Wordset: groups words together into a set for display._

Wordsets

- id (integer, primary key)
- language1 (string) [language used on "fronts" of cards]
- language2 (string) [language used on "backs" of cards]
- theme (string) [short description of set of words, e.g. 'easy', 'for tourism', etc.)]
- color (string) [used for card "artwork", visually distinguishes wordsets]
- enabled (boolean) [allows wordset to be turned on/off for use]
- size (integer) [approx. size , used for selection in sorted wordset wrt each other]

---

_Word gives a single word & its translation into one foreign language_

Word

- id (integer, primary key)
- word1 (string) [word on front of card]
- word2 (string) [word on back of card]
- wordset_id (integer) [reference to wordset]
- level (integer) ["difficulty" of word, 1 -> 9]

---

_User gives profile for a single user_

User

- username (string) 
- password (string) [hashed password]
- email (string) [default email for sending user's session to their email]
- wordset_id (integer) [default wordset [last used]]
- set_size (integer) [default set size [last used] - number of words in practice set]

---

_Emails various info on email address collection_

Email

- id (integer, primary key)
- email (string)
- status (string) [e.g. 'verified', 'unverified', etc.]
- num_attempts (integer) [how many verification have been sent - limited]
- key (string) [used for verification of email address]
