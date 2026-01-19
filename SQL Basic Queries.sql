-- Activate db
use northwind;

select *
from customers;

select * 
from products;

SELECT * from ORDERS;

SELECT CustomerName, City, Country 
FROM Customers;

SELECT ProductID, ProductName 
FROM Products;

-- Return First, Last and Birth Date of employees
select firstname, lastname, birhtdate
from employees;


select country
from customers;


select distinct country
from customers;

SELECT COUNT(DISTINCT Country) 
FROM Customers;

SELECT COUNT(distinct CustomerID) 
FROM Customers;


-- Write an SQL query to return these details from the Employees table.
select firstname, lastname, birthdate
from employees;
 
-- Write an SQL query to retrieve this information from the Customers table.
select customername, address, city
from customers;
 

-- Write an SQL query to return all unique city names from the Suppliers table.
Select distinct city
from suppliers;


-- Write an SQL query to count the number of distinct cities in the Customers table.
SELECT COUNT(DISTINCT city) 
FROM Customers;

/* WHERE */
select *
from customers
where country = 'Mexico';

select productid, productname
from products
where productid = 1;


SELECT * FROM Customers                
WHERE City = 'London';

SELECT * FROM Customers                
WHERE City = "London";

SELECT * 
FROM Customers
WHERE CustomerID = 1;

SELECT * 
FROM Products
WHERE Price > 100;

SELECT * FROM Orders
WHERE OrderDate > '1996-07-30';

select * 
from customers
where country != "UK";

select * 
from customers
where country <> "UK";

-- Write an SQL query to return all customers from London.
select * from customers
where city = "London";


-- Write an SQL query to return the number of customers from the USA.
select count(*)
from customers
where country = "USA";


-- Write an SQL query to return all customers whose CustomerID is equal to or greater than 15.
SELECT *
FROM Orders
WHERE CustomerID >= 15;

SELECT *
FROM Customers
WHERE CustomerID >= 15;

select *
from customers
where country = "Germany" and city = "Berlin";

SELECT * 
FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';

SELECT * 
FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

SELECT * FROM Customers
WHERE Country = 'Germany' OR not Country = 'Spain';

-- Write an SQL query to find customers from the UK and London.
SELECT * 
FROM customers 
WHERE City = 'London' AND Country = 'UK';
 
SELECT * 
FROM customers 
WHERE Country = 'UK' and City = 'London' ;


-- Write an SQL query to find customers from Portland or Kirkland.
select *
from customers
where city = 'portland' or city = 'kirkland';
 

-- Write an SQL query to find orders placed before 1996-08-27 or after 1997-02-21 for an audit.
select * from orders 
where OrderDate < "1996-08-27" || OrderDate > "1997-02-21";

select * from orders 
where OrderDate < "1996-08-27" or OrderDate > "1997-02-21";

SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a%';

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%a';

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%or%';

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%import%';

SELECT * 
FROM products
WHERE productName LIKE '%food%';

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';

-- new year cards
select *
from customers
where city like "%new%";

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Write an SQL query to find all suppliers where the Country field contains 'land'.
select  *
from Suppliers
Where Country LIKE '%land%';
 
-- Write an SQL query to find these employees from the Employees table. n second character
SELECT *
FROM Employees
WHERE FirstName LIKE '_n%';

-- customers from UK, Germany, France
select *
from customers
where country = "UK" or country = "Germany" or country = "France";

select *
from customers
where country in ("UK", "France", "Germany");

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
-- Customers who are in same country as Suppliers

-- this query return countries of suppliers
SELECT Country FROM Suppliers;

-- customers and suppliers in same city
SELECT * FROM Customers
WHERE city IN (SELECT city FROM Suppliers);


select * from suppliers
where city in (select city from customers);


-- a list of customers based in Berlin, Paris, or Madrid. 
select * from customers 
where city in ('berlin', 'paris', 'madrid');

-- orders that were shipped by ShipperID 1 or 3 from the Orders table.
select *
from orders
where ShipperID in (1,3);

-- Write an SQL query using a subquery on the Orders table to find all customers who have placed an order.
select *
from customers
where customerID in (select customerID from orders); 
-- if customerid is found in orders table, that customer placed an order.

select customername
from customers
where customerID in (select customerID from orders); 

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);
-- all products with a price between 10 and 20 and do not show products with a CategoryID of 1,2, or 3:

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni';

SELECT
FROM
WHERE
ORDER BY

SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * 
from products
order by price;

SELECT * 
from products
order by price desc;

select * 
from products
order by productname, price;

select * 
from products
order by productname desc, price;

select productname, price
from products
order by productname desc, price;

SELECT
FROM
WHERE
ORDER BY
LIMIT;

select productname, price
from products
order by productname desc, price
limit 5;

select productname, price
from products
order by productname desc, price
limit 10;

SELECT * FROM Customers
LIMIT 5;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

select min(price)
from products;

select max(price)
from products;

select sum(price)
from products;

select avg(price)
from products;

select avg(price) as "avg price"
from products;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

SELECT CustomerName AS Customer, ContactName AS "Contact Person"
FROM Customers;

-- p.productname means: go to product take and access productname column
select p.productname, c.categoryname
from products as p
join categories as c
on p.categoryid = c.categoryid

-- Write a SQL query to retrieve all columns from the Customers table.