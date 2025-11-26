use exam_b;

DROP PROCEDURE IF EXISTS GetCustomerOrders;

CREATE PROCEDURE GetCustomerOrders(IN p_CustomerID INT)
BEGIN
    SELECT 
        o.OrderID,
        p.Name AS ProductName,
        o.Quantity,
        p.Price,
        (o.Quantity * p.Price) AS TotalAmount,
        o.OrderDate
    FROM Orders AS o
    INNER JOIN Products AS p ON o.ProductID = p.ProductID
    WHERE o.CustomerID = p_CustomerID
    ORDER BY o.OrderDate;
END ;


-- SHOW PROCEDURE STATUS WHERE Db = 'exam_b';

CALL GetCustomerOrders(1);


-- SHOW CREATE PROCEDURE GetCustomerOrders;