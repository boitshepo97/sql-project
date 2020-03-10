-- All records
SELECT * from CustomersTable

-- Name column
SELECT FirstName, LastName from CustomersTable

-- CustomerID = 1
SELECT FirstName, Customer FROM CustomersTable WHERE CustomerId = 1

-- Update Lerato Mabitso 
UPDATE CustomersTable SET FirstName = Lerato, LastName = Mabitso WHERE CustomerID = 1;

-- Delete
DELETE FROM CustomersTable WHERE CustomerID = 2

-- Unique
SELECT SUM(Status) FROM OrdersTable WHERE Status = Null;

-- Return
SELECT MAX(Amount) AS LargestPayment FROM PaymentsTable

-- Sort Country
SELECT FirstName, LastName FROM CustomersTable ORDER BY Country ASC

-- Price range R100 - R600
SELECT all products with a price BETWEEN R100 and R600.

-- Germany & Berlin
SELECT all fields from “Customers” where country is “Germany” AND city is “Berlin”.

-- Cape Town or Durban
SELECT all fields from “Customers” where city is “Cape Town” OR “Durban”.

-- Price range R500>
SELECT all records from Products where the Price is GREATER than R500.

-- Sum of payments
RETURN the sum of the Amounts on the Payments table.

-- Number of orders
Count the number of shipped orders in the Orders table.

-- Average price
RETURN the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).

-- Inner Join
Using INNER JOIN create a query that SELECTs all Payments with Customer information.

-- Turnable Front Wheels
SELECT all products that have turnable front wheels.