-- 1. Visa alla produkter
SELECT * FROM Products;

-- 2. Visa alla kunder
SELECT * FROM Customers;

-- 3. Visa alla produkter, även de som inte har blivit beställda
SELECT 
  p.ProductID,
  p.Name,
  o.OrderID
FROM Orders o
RIGHT JOIN Products p ON o.ProductID = p.ProductID;

SELECT * FROM Customers
WHERE LastName = 'Svensson';


-- 4. visa produkter billigare än 100


SELECT * FROM Products
WHERE Price < 100;


-- 5. räkna totala antalet kunder

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

-- Returnerar det totala antalet kunder.

-- 6.Hitta det genomsnittliga produktpriset

SELECT AVG(Price) AS AveragePrice
FROM Products;


-- Beräknar genomsnittspriset för alla produkter.

-- 7.Visa beställningar med kundnamn

SELECT o.OrderID, c.FirstName, c.LastName
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;


-- Kombinerar beställningar och kunder för att visa vem som lagt varje beställning.

-- 8. Visa de 5 dyraste produkterna

SELECT Name, Price
FROM Products
ORDER BY Price DESC;



























