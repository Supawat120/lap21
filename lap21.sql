SELECT CategoryName, ProductName, UnitPrice
FROM Categories , Products
WHERE Categories.CategoryID = Products.CategoryID
ORDER BY CategoryName

SELECT CategoryName, ProductName, UnitPrice
FROM Products join Categories
on Products.CategoryID = Categories.CategoryID

SELECT CategoryName, ProductName, UnitPrice
FROM Products as p,Categories as c
where p.CategoryID = c.CategoryID 

SELECT CompanyName,OrderID
from orders, shippers
WHERE shippers.ShipperID = orders.ShipVia

SELECT CompanyName,OrderID
from orders JOIN shippers
on shippers.ShipperID = orders.ShipVia

SELECT ProductID, ProductName, CompanyName,Country 
from Products p, Suppliers s
WHERE p.SupplierID = s.SupplierID

SELECT ProductID, ProductName, CompanyName,Country 
from Products p JOIN Suppliers s
on p.SupplierID = s.SupplierID

SELECT CompanyName,OrderID
FROM Orders ,Shippers
where Shippers.ShipperID = Orders.ShipVia
and OrderID = 10275

SELECT ComponyName,OrderID
FROM Orders JOIN Shippers
WHERE shippers shipperID = Oeders.Shipvia
AND CederID = 10275

SELECT e.EmployeeID, FirstName ,,orderID
From  Employee as e join orders as o on e.EmployeeIuctName ployeeID
order by EmployeeID

Select productID,productNAme, City,country
from peoducts p join Suppliers s on p.SuppierID = S.SupplierID

Select CompanyName, count(*)
from orders as o join Shippers as s on o.ShipVia =S.ShipperID
Group by CompanyName

Select p.productid,p.productName,sum(Quantity) as จำนวนขายทังหมด
from products p join [Order Details] od on p.ProductID 

select p.ProductID,p.ProductName
from Employees e join orders o on e.EmpoyessID = o.EmpoyessID
				 join [Order Details] od on o.OrderID = od.OrderID
				 join Products p on od.ProductID = p.ProductID
where e.FristName = 'Nancy'
order by productID
---
select dittinct s.Conutyry
from customer c join order o on c.CustomerID = o.CustomerID
				join [Order Details] od on o.OrderID = od.orderID
				join Products p on od.ProductID = p.ProsuctID
				join Suppliers s on s.SupplierID = p.SupplierID
where c.CompanyName = 'Around the Horn'
-----