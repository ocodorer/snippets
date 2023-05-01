/*
    Sample database for a small org
    sqlite
*/

CREATE TABLE employee (
    firstname_lastname TEXT(200)
        CHECK (length(firstname_lastname) >= 10),
    title TEXT(200)
        CHECK (length(title) >= 5),
    email TEXT(200)
        CHECK (length(email) >= 5),
    date_start TEXT(200),
    date_end TEXT(200),
    office TEXT(200),
    tenure_sequence INTEGER
        CHECK (tenure_sequence > 0)
);

CREATE TABLE team (
    team_name TEXT(200)
);

CREATE TABLE employee_team (
    team_name TEXT(200),
    email TEXT(200)
);

CREATE TABLE skill (
    skill_name TEXT(200)
);

CREATE TABLE employee_skill (
    email TEXT(200),
    skill_name TEXT(200),
    level INT,
    date TEXT(200)
);

