-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy.
-- - Movie data includes the movie title, year released, MPAA rating,
--   and studio.
-- - There are many studios, and each studio produces many movies, but
--   a movie belongs to a single studio.
-- - An actor can be in multiple movies.
-- - Everything you need to do in this assignment is marked with TODO!
-- - Note rubric explanation for appropriate use of external resources.

-- User stories
--
-- - As a guest, I want to see a list of movies with the title, year released,
--   MPAA rating, and studio information.
-- - As a guest, I want to see the movies which a single studio has produced.
-- - As a guest, I want to see each movie's cast including each actor's
--   name and the name of the character they portray.
-- - As a guest, I want to see the movies which a single actor has acted in.
-- * Note: The "guest" user role represents the experience prior to logging-in
--   to an app and typically does not have a corresponding database table.


-- Deliverables
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
-- - Insertion of "Batman" sample data into tables.
-- - Selection of data, so that something similar to the sample "report"
--   below can be achieved.

-- Rubric
--
-- 1. Domain model - 6 points
-- - Think about how the domain model needs to reflect the
--   "real world" entities and the relationships with each other. 
--   Hint #1: It's not just a single table that contains everything in the 
--   expected output. There are multiple real world entities and
--   relationships including at least one many-to-many relationship.
--   Hint #2: Do NOT name one of your models/tables “cast” or “casts”; this 
--   is a reserved word in sqlite and will break your database! Instead, 
--   think of a better word to describe this concept; i.e. the relationship 
--   between an actor and the movie in which they play a part.
-- 2. Execution of the domain model (CREATE TABLE) - 4 points
-- - Follow best practices for table and column names
-- - Use correct data column types (i.e. TEXT/INTEGER)
-- - Use of the `model_id` naming convention for foreign key columns
-- 3. Insertion of data (INSERT statements) - 4 points
-- - Insert data into all the tables you've created
-- - It actually works, i.e. proper INSERT syntax
-- 4. "The report" (SELECT statements) - 6 points
-- - Write 2 `SELECT` statements to produce something similar to the
--   sample output below - 1 for movies and 1 for cast. You will need
--   to read data from multiple tables in each `SELECT` statement.
--   Formatting does not matter.
-- 5. Using external resources for help with the assignment (including colleagues, AI, internet search, etc):
-- - Engineers look to colleagues and the internet all the time when building software.
--   You are welcome to do the same. However, the solution you submit must utilize
--   the skills and strategies covered in class. Alternate solutions which do not demonstrate
--   an understanding of the approaches used in class will receive significant deductions.
--   Any concern should be raised with faculty prior to assignment due date.

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Warner Bros.
-- The Dark Knight        2008           PG-13  Warner Bros.
-- The Dark Knight Rises  2012           PG-13  Warner Bros.

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode columns
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output


-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output



-- The SQL statement for the cast output
-- TODO!

DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_title TEXT,
    release_year INTEGER,
    mpaa_rating TEXT,
    studio_id INTEGER
);

INSERT INTO movies (
    movie_title,
    release_year,
    mpaa_rating,
    studio_id
) VALUES (
    "Batman Begins",
    2005,
    "PG-13",
    1
);

INSERT INTO movies (
    movie_title,
    release_year,
    mpaa_rating,
    studio_id
) VALUES (
    "The Dark Knight",
    2008,
    "PG-13",
    1
);

INSERT INTO movies (
    movie_title,
    release_year,
    mpaa_rating,
    studio_id
) VALUES (
    "The Dark Knight Rises",
    2012,
    "PG-13",
    1
);

DROP TABLE IF EXISTS personnel;

CREATE TABLE personnel (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT
);
 
 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Christian",
    "Bale");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Michael",
    "Caine");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Liam",
    "Neeson");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Katie",
    "Holmes");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Gary",
    "Oldman");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Heath",
    "Ledger");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Aaron",
    "Eckhart");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Maggie",
    "Gyllenhaal");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Tom",
    "Hardy");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Joseph",
    "Gordon");

 INSERT INTO personnel (
    first_name,
    last_name
 ) VALUES (
    "Anne",
    "Hathaway");

DROP TABLE IF EXISTS characters;

CREATE TABLE characters(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_name TEXT,
    personnel_id INTEGER,
    movies_id INTEGER
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Bruce Wayne",
    1,
    1
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Alfred",
    2,
    1
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Ra's Al Ghul",
    3,
    1
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Rachel Dawes",
    4,
    1
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Commissioner Gordon",
    5,
    1
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Bruce Wayne",
    1,
    2
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Joker",
    6,
    2
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Harvey Dent",
    7,
    2
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Alfred",
    2,
    2
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Rachel Dawes",
    8,
    2
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Bruce Wayne",
    1,
    3
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Commissioner Gordon",
    5,
    3
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Bane",
    9,
    3
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "John Blake",
    10,
    3
);

INSERT INTO characters (
    character_name,
    personnel_id,
    movies_id
) VALUES (
    "Selina Kyle",
    11,
    3
);


DROP TABLE IF EXISTS studios;

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT
);

INSERT INTO studios (
    studio_name
) VALUES (
    "Warner Bros"
);

.print "Movies"
.print "======"
.print ""

SELECT movies.movie_title, movies.release_year,movies.mpaa_rating,studios.studio_name 
FROM movies
INNER JOIN studios ON studios.id=movies.studio_id;

.print ""
.print "Top Cast"
.print "========"
.print ""

SELECT movies.movie_title,personnel.first_name,personnel.last_name,characters.character_name
FROM movies
INNER JOIN characters ON characters.movies_id=movies.id
INNER JOIN personnel ON characters.personnel_id=personnel.id;

