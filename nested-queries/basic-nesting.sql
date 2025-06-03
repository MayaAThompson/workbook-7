-- what is the product name of the most expensive product
select ProductName
from products
where UnitPrice = (select max(UnitPrice)
from products);

-- what is the order id, shipping name, and shipping address of all orders shipped via"federal shipping"
select OrderID, ShipName, ShipAddress
from orders
where ShipVia = (select ShipperID from shippers where CompanyName = 'Federal Shipping');

-- what are the order ids of the orders that ordered 'sasquatch ale'
select OrderID 
from `order details` 
where ProductID = (select ProductID from products where ProductName = 'Sasquatch Ale');

-- what is the name of the employee that sold order 10266
select FirstName, LastName
from employees
where EmployeeID = (select EmployeeID from orders where OrderID = 10266);

-- what is the name of the customer that bought order 10266
select ContactName, CompanyName
from customers
where CustomerID = (select CustomerID from orders where OrderID = 10266);