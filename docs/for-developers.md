**FLIPYA**

**FOR DEVELOPERS:**

---

The frontend is built using React JS with VITE.

The backend is built using NODE JS.

The backend relies on a SQL database for word data and user data. The word data cannot be changed by the user. User data can be modified only to the extent of registering new users.

Postmark is used (via API from server) for sending emails out.

Current running on Render [https://flipya.onrender.com/], with database hosted on Supabase.

---

**SQL Schema Description**

Here: [db-schema.md](https://github.com/scottkushnier/flipya/blob/master/docs/db-schema.md "db-schema.md")

---

**Testing**

    npm test src/*test*
    (from client directory)

---

**Possible Improvements**

- Have another auto mode where card flips automatically after some pause, then back - but leave user in control of when to show next (or previous) card.

- Upgrade database for more languages and/or better subsets of words used.

- Add more explicit control over card size.

---

_Scott Kushnier_, _5/6/25_
