-- add a new supplier
insert into suppliers (CompanyName)
values ('Plastic Micro Systems'); 

-- add a new product from that supplier
insert into products (ProductName, SupplierID, UnitPrice)
values ('container 1x1', 30, 5.95);

-- raise the price of your new product by 15%
update products
set UnitPrice = UnitPrice * 1.15
where ProductID = 78;

-- list products and prices from that supplier
select ProductName, UnitPrice
from products
where SupplierID = 30;

-- delete the new product
delete from products
where ProductID = 78;

-- delete the new supplier
delete from suppliers
where SupplierID = 30;

-- list all products
select *
from products;

-- list all suppliers
select *
from suppliers;