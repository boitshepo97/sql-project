CREATE TABLE CustomersTable(
CustomerID SERIAL PRIMARY KEY,
FirstName varchar (50),
LastName varchar (50),
Gender varchar,Address varchar(200),
Phone bigint,
Email varchar (100),City varchar (20),
Country varchar (50)
);

CREATE TABLE EmployeesTable(
EmployeeID SERIAL PRIMARY KEY,
FirstName varchar (50),LastName varchar (50),
Email varchar (100),
JobTitle varchar (20)
);

CREATE TABLE ProductsTable(
ProductID SERIAL PRIMARY KEY,
ProductName varchar (100),
Description varchar (300),
BuyPrice decimal
);

CREATE TABLE PaymentsTable(
CustomerId bigint,
PaymentID SERIAL PRIMARY KEY,
PaymentDate date,Amount decimal,
FOREIGN KEY (CustomerId) REFERENCES CustomersTable(CustomerId)
);

CREATE TABLE OrdersTable(
OrderId SERIAL PRIMARY KEY,
ProductID bigint,
PaymentID bigint,
FulfilledByEmployeeID bigint,
DateRequired date,
DateShipped date,
Status varchar (20),
FOREIGN KEY (ProductID) REFERENCES ProductsTable(ProductID),
FOREIGN KEY (PaymentID) REFERENCES PaymentsTable(PaymentID),
FOREIGN KEY (FulfilledByEmployeeID) REFERENCES EmployeesTable(EmployeeID));