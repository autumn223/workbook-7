/* Products is the answer to the first question. */

/* Write a query to list the product id, product name, and unit price of every product. */
select ProductID, ProductName, UnitPrice
from Products;

/* Write a query to list the product id, product name, and unit price of every product.
   Except this time, order them in ascending order by price. */
select ProductID, ProductName, UnitPrice
from Products
order by UnitPrice;

/* What are the products that we carry where the unit price is $7.50 or less? */
select ProductName, UnitPrice
from products
where UnitPrice <= 7.50;

/* What are the products that we carry where we have at least 100 units on
hand? Order them in descending order by price. */
select ProductID, ProductName, UnitPrice, UnitsInStock
from Products
where UnitsInStock >= 100
order by UnitPrice desc;

/* What are the products that we carry where we have at least 50 units on
hand? Order them in descending order by price. If two or more have the
same price, list those in ascending order by product name. */
select ProductID, ProductName, UnitPrice, UnitsInStock
from Products
where UnitsInStock >= 50
order by UnitPrice desc, ProductName asc;

/* What are the products that we carry where we have no units on hand, but 1
or more units of them on backorder? Order them by product name. */
select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
from Products
where UnitsInStock = 0 and UnitsOnOrder >= 1
order by ProductName asc;

/* What is the name of the table that holds the types (categories) of the items
Northwind sells? */
/* categories is the name of the table */

/* Write a query that lists all of the columns and all of the rows of the
categories table? What is the category id of seafood? */
select * 
from Categories;

select CategoryID 
from Categories 
where CategoryName = 'Seafood';

/* Examine the Products table. How does it identify the type (category) of
each item sold? Write a query to list all of the seafood items we carry. */
select p.ProductID, p.ProductName, p.UnitPrice
from Products p
join Categories c on p.CategoryID = c.CategoryID
where c.CategoryName = 'Seafood';










