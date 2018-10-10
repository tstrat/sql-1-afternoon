/*
    SQL - 1 - Afternoon
    DevMountain.  OCT 10, 2018
*/

DROP TABLE IF EXISTS person;
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
WHERE age = 18;

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


/*  PROBLEM 2  ORDERS */

-- Create a table called Orders that records: PersonID, ProductName, ProductPrice, Quantity.
CREATE TABLE orders (
    person_id INTEGER,
    product_name TEXT,
    product_price DECIMAL,
    quantity INTEGER
);

-- Add 5 Orders to the Orders table
-- Make orders for at least two different people.
-- PersonID should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quanitity)
VALUES
(1, 'Toy', 15, 1),
(3, 'Car', 15000, 2),
(1, 'Spaceship', 15000000, 1),
(2, 'DevMountain T-shirt', 20, 150),
(5, 'pencil', 0.25, 100),

-- Select all the records from the Orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT count(*) FROM orders;

-- Calculate the total order price.
SELECT sum(product_price * quantity) FROM orders;

-- Calculate the total order price by a single PersonID.
SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 1;

/* Problem 3: ARTIST */

-- Add 3 new Artists to the Artist table. ( It's already created )
INSERT INTO Artist ( Name ) 
VALUES 
( 'Snoop Dogg' ),
( 'Ed Sheeran'),
( 'Billy Joel');

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM Artist
ORDER BY name DESC;

-- Select 5 artists in alphabetical order.
SELECT * FROM Artist
ORDER BY name ASC;

-- Select all artists that start with the word "Black".
SELECT * FROM Artists
WHERE name LIKE 'Black%';

-- Select all artists that contain the word "Black".
SELECT * FROM Artists
WHERE name LIKE '%Black%';

/*  Problem 4: Employee */

-- List all Employee first and last names only that live in Calgary.

-- Find the first and last name and birthdate for the youngest employee.
SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate DESC
LIMIT 1;

-- Find the first and last name and birthdate for the oldest employee.
SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate ASC
LIMIT 1;

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
-- You will need to query the employee table to find the Id for Nancy Edwards
SELECT * FROM Employee
WHERE ReportsTo = (SELECT EmployeeID FROM Employee WHERE FirstName='Nancy' AND LastName='Edwards');

-- Count how many people live in Lethbridge.
SELECT count(*) FROM Employee
WHERE city = 'Lethbridge';


/* Problem 5: Invoices */

-- Count how many orders were made from the USA.
SELECT * FROM Invoice
WHERE BillingCountry = 'USA';

-- Find the largest order total amount.
SELECT Total FROM Invoice
ORDER BY Total DESC
LIMIT 1;

-- Find the smallest order total amount.
SELECT Total FROM Invoice
ORDER BY Total ASC
LIMIT 1;

-- Find all orders bigger than $5.
SELECT count(*) FROM Invoice
WHERE Total > 5;

-- Count how many orders were smaller than $5.
SELECT count(*) FROM Invoice
WHERE Total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT count(*) FROM Invoice
WHERE BillingCity IN ('CA','TX','AZ');

-- Get the average total of the orders.
SELECT avg(Total) FROM Invoice;

-- Get the total sum of the orders.
SELECT sum(Total) FROM Invoice;

















