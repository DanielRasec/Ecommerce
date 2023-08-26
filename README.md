# Ecommerce
queries do projetos
// Consulta INNER JOIN
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

// Consulta de agregaçao (SUM
SELECT CategoryName, SUM(Quantity) AS TotalQuantity
FROM Products
INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY CategoryName;

