**FLIPYA**

**FOR DEVELOPERS:**

---

The frontend is built using React JS.

The backend is built using NODE JS.

The backend relies on a SQL database for word data and user data. The word data cannot be changed by the user. User data can be modified by user only by registering new users.

Postmark is used (via API from server) for sending emails out.

///////////////////////////////////////////////////////////////////////////

---

**Sample .env file**

    SQL_DB='postgresql:///cards'
    SQL_ECHO='False'
    STRIPE_API_KEY='sk_test_sljlksdjflskjfskldfj'

(API key is required for Stripe interface.)

---

**Sample SQL Seed File**

Here: [cards-seed.sql](https://github.com/scottkushnier/capstone-1/blob/master/docs/cards-seed.sql "cards-seed.sql")

---

**Testing**

    python3 -m unittest test_server.py
    python3 -m unittest test_models.py

---

**Possible Improvements**

- Keep database of past charges, including amounts, dates, charge denied messages
  - and show on portal page.
  - allow filters by date, amount, etc.
- Other credit card brands (e.g. Diner's Club).
- Ability to do refunds and other merchant processing operations.
- Allow user/developer to specify a different logo, postion on card, etc.
  - and/or multiple colors
- Prettier confirm window if user is about to lose recent, unsaved changes.

---

_Scott Kushnier_, _5/9/24_
