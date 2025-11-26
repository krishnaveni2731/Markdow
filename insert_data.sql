-- Insert data to all the tabels in the database:
-- product data

INSERT INTO Products (ProductID, Name, Price, Category) VALUES
(1, 'Wireless Mouse', 299.00, 'Electronics'),
(2, 'Bluetooth Speaker', 499.00, 'Electronics'),
(3, 'Notebook', 39.00, 'Stationery'),
(4, 'Desk Lamp', 199.00, 'Home'),
(5, 'Water Bottle', 89.00, 'Fitness');

-- customer data
INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Anna', 'Svensson', 'anna.svensson@example.com'),
(2, 'Johan', 'Lindberg', 'johan.lindberg@example.com'),
(3, 'Sara', 'Nilsson', 'sara.nilsson@example.com');

-- orders data
INSERT INTO Orders (OrderID, ProductID, CustomerID, Quantity, OrderDate) VALUES
(1, 1, 1, 2, '2025-11-01'),
(2, 3, 2, 5, '2025-11-03'),
(3, 2, 1, 1, '2025-11-05'),
(4, 5, 3, 3, '2025-11-07'),
(5, 4, 2, 1, '2025-11-10');

--![ER Diagram](img/er_diagram.png)
