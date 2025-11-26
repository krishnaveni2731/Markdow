-- Create Products table
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  Name VARCHAR(100),
  Price DECIMAL(10,2),
  Category VARCHAR(50)
);

-- Create Customers table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  ProductID INT,
  CustomerID INT,
  Quantity INT CHECK (Quantity > 0),
  OrderDate DATETIME,
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

