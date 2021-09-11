BEGIN;

DROP TABLE IF EXISTS "User" CASCADE;
DROP TABLE IF EXISTS "Level" CASCADE;
DROP TABLE IF EXISTS "Quiz" CASCADE;
DROP TABLE IF EXISTS "Question" CASCADE;
DROP TABLE IF EXISTS "qualifier" CASCADE;
DROP TABLE IF EXISTS "Theme" CASCADE;
DROP TABLE IF EXISTS "Answer" CASCADE;

CREATE TABLE IF NOT EXISTS "User" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "firstname" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "color" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "Level" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "title" TEXT NOT NULL,
    "color" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "Quiz" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "date_publication" TIMESTAMPTZ DEAFAULT now(),
    FOREIGN KEY("User_id") REFERENCES "User"("id")

);

CREATE TABLE IF NOT EXISTS "Question" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "anecdote" TEXT NOT NULL,
    FOREIGN KEY("Answer_id") REFERENCES "Answer"("id"),
    FOREIGN KEY("Quizz_id") REFERENCES "Quizz"("id"),
    FOREIGN KEY("Level_id") REFERENCES "Level"("id")
    
);

CREATE TABLE IF NOT EXISTS "qualifier" (
    "id"INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    FOREIGN KEY("Quiz_id") REFERENCES "Quiz"("id"),
    FOREIGN KEY("Theme_id") REFERENCES "Theme"("id")
);

CREATE TABLE IF NOT EXISTS "Theme" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "title" TEXT nOT NULL,
    "color" TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS "Answer" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "answer" TEXT NOT NULL,
    FOREIGN KEY("Question_id") REFERENCES "Question"("id")
);

COMMIT;

