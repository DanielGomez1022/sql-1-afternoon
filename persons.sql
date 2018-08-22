-- PROBLEM 1 / STEP 1
CREATE TABLE Person (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    height TEXT,
    city TEXT,
    favoriteColor TEXT
);

-- STEP 2
INSERT INTO Person 
(name,age,height,city,favoriteColor)
VALUES 
('Bob', 21, '12cm', 'Anthem', 'Green'),
('Bill', 20, '10cm', 'Mesa', 'Blue'),
('Nick', 34, '9cm', 'Phoenix', 'Violet'),
('Cody', 18, '5cm', 'Mesa', 'Red'),
('Andy', 42, '11cm', 'Anthem', 'Yellow');

-- STEP 3
SELECT * FROM Person
ORDER BY height ASC;

-- STEP 4
SELECT * FROM Person
ORDER BY height DESC;

--STEP 5
SELECT * FROM Person
ORDER BY age DESC

-- STEP 6
SELECT * FROM Person
WHERE age > 20;

-- STEP 7
SELECT * FROM Person
WHERE age = 18;

-- STEP 8
SELECT * FROM Person
WHERE age < 20 AND age > 30;

-- STEP 9
SELECT * FROM Person
WHERE age != 27;

-- STEP 10
SELECT * FROM Person
WHERE favoriteColor != 'Red';

-- STEP 11
SELECT * FROM Person
WHERE favoriteColor != 'Red' AND favoriteColor != 'Blue';

-- STEP 12
SELECT * FROM Person
WHERE favoriteColor = 'Orange' OR favoriteColor = 'Green';

-- STEP 13
SELECT * FROM Person
WHERE favoriteColor IN ('Orange', 'Green', 'Blue');

-- STEP 14
SELECT * FROM Person
WHERE favoriteColor IN ('Purple', 'Yellow');

-- PROBLEM 2 / STEP 1
CREATE TABLE Orders (
  PersonID INTEGER,
  ProductName TEXT,
  ProductPrice DECIMAL, 
  Quantity INTEGER
);

-- STEP 2
INSERT INTO Orders
(PersonID, ProductName, ProductPrice, quantity)
VALUES
(0, 'Nails', 0.99, 100),
(1, 'Wood', 10.99, 500),
(2, 'Axe', 16.81, 100),
(3, 'Drill', 16.01, 100),
(4, 'Hammer', 15.01, 100);
-- STEP 3
SELECT * FROM Orders

-- STEP 4
SELECT SUM(quantity) FROM Orders;

-- STEP 5
SELECT SUM(ProductPrice) FROM Orders

-- STEP 6
SELECT SUM(ProductPrice * quantity) FROM Orders WHERE PersonID = 0

-- PROBLEM 3 / STEP 1
INSERT INTO Artist(Name) VALUES('Disturbed'), ('Johnny Cash'), ('Chevelle');

-- STEP 2
SELECT * FROM Artist
ORDER BY Name DESC LIMIT 10 

-- STEP 3
SELECT * FROM Artist
ORDER BY Name ASC LIMIT 5 

-- STEP 4
SELECT * FROM Artist
WHERE Name LIKE 'Black%'

-- STEP 5
SELECT * FROM Artist
WHERE Name LIKE '%Black%'

-- PROBLEM 4 / STEP 1
SELECT firstName, lastName FROM Employee
WHERE City = 'Calgary'

-- STEP 2
SELECT firstName, lastName, MIN(birthdate) 
FROM Employee

-- STEP 3
SELECT firstName, lastName, MAX(birthdate) 
FROM Employee

-- STEP 4
SELECT * FROM Employee 
WHERE ReportsTo = 2

-- STEP 5
SELECT COUNT(*) FROM Employee
WHERE City = "Lethbridge";

-- PROBLEM 5 / STEP 1
SELECT Count(*) FROM Invoice 
WHERE BillingCountry = 'USA';

-- STEP 2
SELECT MAX(Total) FROM Invoice

-- STEP 3
SELECT MIN(Total) FROM Invoice

-- STEP 4
SELECT * FROM Invoice
WHERE total > 5

-- STEP 5
SELECT count(*) FROM Invoice
WHERE Total > 5

-- STEP 6
SELECT Count(*) FROM Invoice
WHERE BillingState in ('CA', 'TX', 'AZ');

-- STEP 7
SELECT AVG(Total) FROM Invoice;

-- STEP 8
SELECT SUM(Total) FROM Invoice;
