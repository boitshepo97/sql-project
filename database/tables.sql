CREATE TABLE CustomersTable(
    CustomerID int,
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
    EmployeeID int,
    FirstName varchar(50),
    LastName varchar(50),
    Address varchar(200),
    Email varchar(100),
    JobTitle varchar(20)
);

CREATE TABLE OrdersTable(
    OrderId int,
    ProductID int,
    PaymentID int,
    FulfilledByEmployeeID int,
    DateRequired timestamp,
    DateShipped timestamp,
    Status varchar(20),
    FOREIGN KEY(EmployeeID) REFERENCES artists(ProductID)
);

CREATE TABLE PaymentsTable(
    CustomerId int,
    PaymentID int,
    PaymentDate timestamp,
    Amount decimal
);

CREATE TABLE ProductsTable(
    ProductID int,
    ProductName varchar(100),
    Description varchar(300),
    BuyPrice decimal
);