-- * records
SELECT * from CustomersTable;

-- Name column
SELECT FirstName, LastName from CustomersTable;

-- CustomerID = 1
SELECT FirstName, LastName FROM CustomersTable WHERE CustomerId = 1;

-- Update Lerato Mabitso 
UPDATE CustomersTable SET FirstName = Lerato, LastName = Mabitso WHERE CustomerID = 1;

-- Delete
DELETE FROM CustomersTable WHERE CustomerID = 2;

-- Unique
SELECT Distinct Status From OrdersTable;

-- Return
SELECT MAX(Amount) AS LargestPayment FROM PaymentsTable;

-- Sort Country
SELECT FirstName, LastName FROM CustomersTable ORDER BY Country ASC;

-- Price range R100 - R600
SELECT * FROM ProductsTable WHERE BuyPrice BETWEEN 100 and 600;

-- Germany & Berlin
SELECT * FROM Customers WHERE Country = 'Germany' and City = 'Berlin';

-- Cape Town or Durban
SELECT * FROM CustomersTable WHERE City= 'Cape town' OR City='Durban';

-- Price range R500>
SELECT * FROM ProductsTable WHERE BuyPrice > 500;

-- Sum of payments
SELECT SUM(Amount) FROM PaymentsTable;

-- Number of orders
SELECT COUNT(Status) FROM OrdersTable WHERE status = 'Shipped';

-- Average price
SELECT AVG(BuyPrice/12) AS  AverageDollars, AVG(BuyPrice) AS  Average_Rand FROM ProductsTable;

-- Inner Join
SELECT * FROM CustomersTable INNER JOIN Payments ON Payments.CustomerID = Customers.CustomerID;

-- Turnable Front Wheels
SELECT * FROM ProductsTable WHERE description = 'Turnable front wheels, steering function'
