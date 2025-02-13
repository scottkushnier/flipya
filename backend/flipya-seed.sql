
INSERT INTO wordsets (language1, language2, theme, color, enabled, size)
VALUES ('English', 'Hebrew', 'ten', 'aqua', true, 10),
       ('English', 'French', 'five', '#df5a5a', true, 5),
       ('English', 'French', 'restaurant',  '#df5a5a', true, 4),
       ('English', 'Hebrew', 'religious', 'aqua', true, 4),
       ('English', 'Hebrew', 'Israeli', 'aqua', true, 3),
       ('English', 'Italian', 'colors', 'green', true, 3);

INSERT INTO words (word1, word2, wordset_id)
VALUES ('man', 'homme', 2),
       ('woman', 'femme', 2),
       ('boy', 'garçon', 2),
       ('girl' , 'jeune fille', 2),
       ('house', 'maison', 2);

INSERT INTO words (word1, word2, wordset_id)
VALUES ('man', 'גבר', 1),
       ('woman', 'אִשָׁה', 1),
       ('boy', 'יֶלֶד', 1),
       ('girl' , 'יַלדָה', 1),
       ('house', 'בַּיִת', 1),
       ('bird', 'ציפור', 1),
       ('cat','חתול', 1),
       ('cheese','גבינה', 1),
       ('fish','דג', 1),
       ('apartment','דירה', 1);

INSERT INTO words (word1, word2, wordset_id)
VALUES ('bread', 'pain', 3),
       ('to eat', 'manger', 3),
       ('chicken', 'poulet', 3),
       ('beef', 'bœuf', 3);

INSERT INTO words (word1, word2, wordset_id)
VALUES ('world', 'עוֹלָם', 4),
       ('to bless', 'לברך', 4),
       ('king', 'מֶלֶך', 4),
       ('about', 'עַל', 4);

INSERT INTO words (word1, word2, wordset_id)
VALUES ('ice cream', 'גְלִידָה', 5),
       ('investigation', 'חֲקִירָה', 5),
       ('knife', 'סַכִּין', 5);
    
INSERT INTO words (word1, word2, wordset_id)
VALUES ('red', 'rosso', 6),
       ('green', 'verde', 6),
       ('yellow', 'giallo', 6);
