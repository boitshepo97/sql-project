CREATE TABLE CustomersTable(
    CustomerID SERIAL PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Gender varchar,
    Address varchar(200),
    Phone bigint,
    Email varchar(100),
    City varchar(20),
    Country varchar(50)
);

CREATE TABLE EmloyeesTable(
    EmployeeID SERIAL PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Address varchar(200),
    Email varchar(100),
    JobTitle varchar(20)
);

CREATE TABLE OrdersTable(
    OrderId SERIAL PRIMARY KEY,
    ProductID int,
    PaymentID int,
    FulfilledByEmployeeID int,
    DateRequired date,
    DateShipped date,
    Status varchar(20),
    FOREIGN KEY(ProductID) REFERENCES ProductsTable(CustomerID),
    FOREIGN KEY (PaymentID) REFERENCES PaymentsTable(PaymentID),
    FOREIGN KEY (FulfilledByEmployeeID) REFERENCES EmloyeesTable(EmployeeID)
);

CREATE TABLE PaymentsTable(
    CustomerId SERIAL PRIMARY KEY,
    PaymentID int,
    PaymentDate date,
    Amount decimal,
    FOREIGN KEY (CustomerID) REFERENCES CustomersTable(CustomersID)
);

CREATE TABLE ProductsTable(
    ProductID SERIAL PRIMARY KEY,
    ProductName varchar(100),
    Description varchar(300),
    BuyPrice decimal
);