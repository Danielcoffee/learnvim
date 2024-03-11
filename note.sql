.schema <table_name>: show table schema

----
test your code:
cat filename.sql | sqlite3 songs.db
-------------------------------------


SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*) DESC LIMIT 1;

SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*) DESC;
--> top 3 language from highest value.

SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*);
--> top3 language ko sort

SELECT title FROM shows WHERE id IN (SELECT show_id FROM stars WHERE person_id = (SELECT id FROM people WHERE name = "Steve Carell")) ORDER BY title;
--> connect between


SELECT title FROM shows, people, stars
   ...> WHERE people.id = stars.person_id
   ...> AND stars.show_id = shows.id
   ...> AND name = "Steve Carell";
   --> use for multi conditional

SELECT * FROM people WHERE name LIKE "Steve C%";
> Use LIKE & % to find name1

// roaster.db
SELECT * FROM students
   ...> ORDER BY house, student_name DESC;
> nested sort first by house, then by student_name;

SELECT house, COUNT(*) FROM students
   ...> GROUP BY house
   ...> ORDER BY COUNT(*);
> order and count;

sqlite> SELECT title, votes, rating FROM longlist
   ...> ORDER BY rating DESC, votes DESC
   ...> LIMIT 10;

JOIN
-------
SELECT * FROM shows JOIN ratings ON shows.id = ratings.show_id WHERE title = "The Office";
--> use JOIN
JOIN = inner join
NATURAL JOIN

-------

outer join: left, right, full join
select * from sea_lions left join
   ...> migrations on sea_lions.id=migrations.id;
select * from sea_lions right join
   ...> migrations on sea_lions.id=migrations.id;
   select * from sea_lions full join
   ...> migrations on sea_lions.id=migrations.id;

--------
CREATE
sqlite3 example.db
(create new table)

-- Demonstrates creating a table schema
-- Creates mbta.db

-- Deletes prior tables if they exist
DROP TABLE IF EXISTS "riders";
DROP TABLE IF EXISTS "stations";
DROP TABLE IF EXISTS "visits";
DROP TABLE IF EXISTS "swipes";
DROP TABLE IF EXISTS "cards";

-- Creates three tables without specified type affinities

.timer on
CREATE INDEX title_index ON shows (title);
-> turn on timer
> create index title_index on shows.

CREATE TABLE houses (
   id INTERGER NOT NULL,
   house TEXT NOT NULL,
   head TEXT NOT NULL,
   PRIMARY KEY(id)
);

INSERT INTO favorites (language, problem) VALUES("SQL", "Fitty");
--> insert vao language gia tri SQL & problem gia tri Fitty

INSERT INTO "user_logs" ("type", "password")
SELECT 'update', (
    SELECT "password"
    FROM "users"
    WHERE "username" = 'carter'
);



UPDATE favorites SET language = 'C++' WHERE language = 'C';
--> update value to language where language = 'C';
--> very important to backup all your data.

-----
AVERAGE:
ROUND
SELECT AVG(energy) FROM songs;
-----
SELECT SUM(rating) FROM longlist;
SELECT MIN(rating) FROM longlist;
SELECT MAX(rating) FROM longlist;
-- for unique value use DISTINCT
sqlite> SELECT DISTINCT(title) FROM longlist;
sqlite> SELECT ROUND(AVG("rating"), 2) AS "average rating" FROM longlist;


SELECT COUNT(*) FROM favorites WHERE language = 'C';. A count is presented.

SELECT COUNT(*) FROM favorites WHERE language = 'C' AND problem = 'Mario';.

SELECT language, COUNT(*) FROM favorites GROUP BY language;.

SELECT language, COUNT(*) FROM favorites GROUP BY language ORDER BY COUNT(*);.
This will order the resulting table by the count.

INSERT into a SQL database utilizing the form INSERT INTO table (column...) VALUES(value, ...);.

INSERT INTO favorites (language, problem) VALUES ('SQL', 'Fiftyville');.

DELETE allows you to delete parts of your data. For example, you could
DELETE FROM favorites WHERE problem = 'Tideman';.



Create sql from csv file:
We can create a SQL database at the terminal by typing sqlite3 favorites.db. Upon being prompted, we will agree that we want to create favorites.db by pressing y.
You will notice a different prompt as we are now inside a program called sqlite3.
We can put sqlite3 into csv mode by typing .mode csv. Then, we can import our data from our csv file by typing .import favorites.csv favorites. It seems that nothing has happened!

----
Operator
=
!= or <> or WHERE NOT =

AND
OR
()

---
NULL
NOT NULL
---
LIKE
%: any character
_: single character

sqlite> SELECT * FROM longlist
   ...> WHERE title LIKE "The % name%";

sqlite> SELECT title FROM longlist
   ...> WHERE title LIKE 'P_r%';

----
range:
>, <, >=, <=
BETWEEN ... AND ...

sqlite> SELECT title FROM longlist
   ...> WHERE year BETWEEN 2019 AND 2022;


---
UNION: create a set in set1 or set2

sqlite> SELECT "name" FROM authors
   ...> UNION
   ...> SELECT "name" FROM translators;

# create a new column "profession" have a row "translator" and "author"

sqlite> SELECT "author" AS "profession", "name" FROM "authors"
   ...> UNION
   ...> SELECT "translator" AS "profession", "name" FROM "translators";

---
INTERSECT: create a unique from two set
sqlite> SELECT "name" FROM "authors"
   ...> INTERSECT
   ...> SELECT "name" FROM "translators";

default of JOIN?

---
EXCEPT

sqlite> SELECT "name" FROM "authors"
   ...> EXCEPT
   ...> SELECT "name" FROM "translators";

----
open command line
 nano ~/.bashrc
change PS1='\[\033[01;34m\]\W\[\033[00m\]$ '

current output mode: table --wrap 0 --wordwrap off --noquote

-- this if for table in sqlite3
---
DROP TABLE "table";

---
Code schema.sql
Then .read schema.sql to run: easy and fast

ALTER TABLE "visits" RENAME TO "swipes";
ALTER TABLE "swipes" ADD COLUMN "type" TEXT;
ALTER TABLE "swipes" RENAME COLUMN "type" TO "types";
ALTER TABLE "swipes" DROP COLUMN "types";
ALTER TABLE "swipes"
DROP COLUMN "test";

---

CHECK
default
NOT NULL
UNIQUE
---
example
CREATE TABLE cards (
    id INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE stations (
    id INTEGER,
    name TEXT NOT NULL UNIQUE,
    line TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE "swipes" (
    "id" INTEGER,
    "card_id" INTEGER,
    "station_id" INTEGER,
    "type" TEXT NOT NULL CHECK("type" IN ('enter', 'exit', 'deposit')),
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "amount" NUMERIC NOT NULL CHECK("amount" != 0),
    PRIMARY KEY("id"),
    FOREIGN KEY("station_id") REFERENCES "stations"("id"),
    FOREIGN KEY("card_id") REFERENCES "cards"("id")
)
-- Work with CSV
.import --csv --skip 1 mfa.csv collections
- `--skip 1`: row 1 need to skip

INSERT INTO "collections" ("title", "accession_number", "acquired") 
SELECT "title", "accession_number", "acquired" FROM "temp";

-- We can insert data from temp table to collection table.
