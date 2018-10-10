/*
    SQL - 1 - Afternoon
    DevMountain.  OCT 10, 2018
*/

-- Create a table called Person that records a person's ID, Name, Age, Height ( in cm ), City, FavoriteColor.
--      ID should be an auto-incrementing id/primary key - Use type: INTEGER PRIMARY KEY AUTOINCREMENT

CREATE TABLE person (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES
('Travis', 27, 180, 'Phoenix', 'purple'),
('Eric', 30, 167, 'Portland', 'blue'),
('Carissa', 25, 164, 'Omaha', 'green'),
('Mark', 63, 178, 'Tucson', 'maroon'),
('Debi', 61, 165, 'Tucson', 'red');

-- List all the people in the Person table by Height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

-- List all the people in the Person table by Height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC;

-- List all the people in the Person table by Age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

-- List all the people in the Person table older than age 20.
SELECT * FROM person
WHERE age > 20;

-- List all the people in the Person table that are exactly 18.
SELECT * FROM person
WHERE age == 18;

-- List all the people in the Person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- List all the people in the Person table that are not 27 (Use not equals).
SELECT * from Person
WHERE age != 27;

-- List all the people in the Person table where their favorite color is not red.
SELECT * from Person
WHERE favorite_color != 'red';

-- List all the people in the Person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- List all the people in the Person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color IN ('orange','green');

-- List all the people in the Person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color IN ('orange','green', 'blue');

-- List all the people in the Person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow','purple');




