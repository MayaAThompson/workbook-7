-- how many suppliers are there?
select count(*)  
from suppliers;

-- what is the sum of all employee salaries
select sum(Salary)
from employees;

-- what is the price of the cheapest item northwind sells
select min(UnitPrice)
from products;

-- what is the average price of items that northwind sells
select avg(UnitPrice)
from products;

-- what is the price of the most expensive product at northwind
select max(UnitPrice)
from products;

-- what is the supplier ID of each supplier and the number of items they supply
select SupplierID, count(*) as num_products
from products
group by SupplierID;

-- What is the category ID of each category and the average price of each item in the category
select CategoryID, avg(UnitPrice)
from products
group by CategoryID;

-- For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they suppl
select SupplierID, count(*) as num_products
from products
group by SupplierID
having num_products >= 5;

-- List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand). Sort the results in descending order by value. If two or more have the same value, order by product name
select ProductID, ProductName, UnitPrice * UnitsInStock as inventory_value
from products
order by inventory_value desc, ProductName;