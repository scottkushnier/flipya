

CREATE TABLE wordsets (
  id SERIAL PRIMARY KEY,
  language1 VARCHAR,
  language2 VARCHAR,
  theme VARCHAR, 
  color VARCHAR,
  enabled BOOLEAN,
  size INT);

CREATE TABLE words (
  id SERIAL PRIMARY KEY,
  word1 VARCHAR NOT NULL,
  word2 VARCHAR NOT NULL,
  wordset_id INTEGER REFERENCES wordsets
);

CREATE TABLE emails (
  id SERIAL PRIMARY KEY,
  email VARCHAR NOT NULL,
  status VARCHAR,
  num_attempts INT,
  key VARCHAR
);