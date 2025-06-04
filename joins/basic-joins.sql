-- list product idd, name, price, and category name of all products. order by category name then product name
select products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName
from products
	left join categories
    on products.CategoryID=categories.CategoryID
order by CategoryName, ProductName;

-- list product idd, name, price, and supplier name of all products that cost more than $75 order by product name
select products.ProductID, products.ProductName, products.UnitPrice, suppliers.CompanyName as 'Supplier'
from products
	left join suppliers
    on products.SupplierID=suppliers.SupplierID
where UnitPrice > 75
order by ProductName;

-- -- list product idd, name, price, and supplier name of all products that cost more than $75 order by product name
select products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName, suppliers.CompanyName as 'Supplier'
from products
	left join categories
    on products.CategoryID=categories.CategoryID
    left join suppliers
    on products.SupplierID=suppliers.SupplierID
order by ProductName;

-- what is the product name and categories of the most expensive products
select products.ProductName, categories.CategoryName
from products
	join categories
    on products.CategoryID=categories.CategoryID
where UnitPrice = (select max(UnitPrice) from products);

-- list order id, ship name, ship address, and ship company name of every order that shipped to Germany
select orders.OrderID, orders.ShipName, orders.ShipAddress, shippers.CompanyName
from orders
	join shippers
    on orders.ShipVia=shippers.ShipperID
where ShipCountry = 'Germany';

-- list order id, order date, ship name, ship address, of all orders that ordered 'Sasquatch Ale'
select orders.OrderID, orders.OrderDate, orders.ShipName, orders.ShipAddress
from orders
join `order details`
on orders.OrderID=`order details`.OrderID
join products
on `order details`.ProductID=products.ProductID
where ProductName = 'Sasquatch Ale';