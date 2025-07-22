
-- Total spent by each customer
SELECT c.Name, SUM(p.Amount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN Payments p ON o.OrderID = p.OrderID
GROUP BY c.Name;

-- Order summary with product details
SELECT o.OrderID, p.Name AS Product, od.Quantity, p.Price,
       od.Quantity * p.Price AS Total
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;
