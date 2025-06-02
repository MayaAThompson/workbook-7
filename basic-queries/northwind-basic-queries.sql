-- Products

-- list product id name and price for all products
select ProductID, ProductName, UnitPrice from products;

-- list product id name and price for all products ordered ascending by price
select ProductID, ProductName, UnitPrice from products order by UnitPrice;

-- list product id name and price for all products that are $7.50 or less
select ProductID, ProductName, UnitPrice from products where UnitPrice <= 7.5;

 -- list product id name and price for all products that have at least 100 units on hand  ordered by price descending
 select ProductID, ProductName, UnitPrice, UnitsInStock from products where UnitsInStock >= 100 order by UnitPrice desc;
 
 -- list product id name and price for all products that have at least 100 units on hand  ordered by price descending then product name
 select ProductID, ProductName, UnitPrice, UnitsInStock from products where UnitsInStock >= 100 order by UnitPrice desc, ProductName;
 
 -- list product id name and price for all products that have none in stock but at least one is on backorder
 select ProductID, ProductName, UnitPrice, UnitsInStock from products where UnitsInStock < 1 and UnitsOnOrder >=1;
 
 -- list all of the columns and all of the rows of the categories table
 select * from categories;
 
-- list all of the seafood items we carry
select * from products where CategoryID = 8;

-- list the first and last names of all northwind employees
select FirstName, LastName from employees;

-- list the first and last names of all northwind employees that are managers
select FirstName, LastName from employees where Title like '%manager%';

-- list the distinct job titles for northwind employees
select distinct Title from employees;

-- list what employees have a salary between $2000 and $2500
select * from employees where Salary between 2000 and 2500;

-- list all info about all northwind suppliers
select * from suppliers;

--  list all of the items that "Tokyo Traders" supplies to Northwind
select * from products where SupplierID = 4;