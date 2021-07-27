use northwind;

select * from products;

/* 1. Write a query to get Product name and quantity/unit      */
select ProductName,QuantityPerUnit from products;

/* 2.Write a query to get current Product list (Product ID and name)   */
select ProductID,ProductName from products where Discontinued='false' order by ProductName;


/* 3. Write a query to get discontinued Product list (Product ID and name) */
select ProductID,ProductName from products where Discontinued=1 order by ProductName;


/* 4. Write a query to get most expense and least expensive Product list (name and unit price)  */
select ProductID,ProductName,UnitPrice from products order by UnitPrice desc;


/* 5. Write a query to get Product list (id, name, unit price) where current products cost less than $20   */
select ProductID,ProductName,UnitPrice from products where (((UnitPrice)<20) and ((Discontinued)='false')) order by UnitPrice desc;


/* 6. Write a query to get Product list (id, name, unit price) where products cost between $15 and $25  */
select ProductID,ProductName,UnitPrice from products where (((UnitPrice)>=15) and ((UnitPrice)<=25 ))and ((Discontinued)='false') order by products.UnitPrice;


/* 7. Write a query to get Product list (name, unit price) of above average price  */
select ProductName,UnitPrice from products where UnitPrice>(select avg(UnitPrice) from products)order by UnitPrice;


/* 8. Write a query to get Product list (name, unit price) of ten most expensive products  */
SELECT DISTINCT ProductName as Ten_Most_Expensive_Products, UnitPrice FROM Products AS a WHERE 10 >= (SELECT COUNT(DISTINCT UnitPrice) FROM Products AS b WHERE b.UnitPrice >= a.UnitPrice) ORDER BY UnitPrice desc;


/* 9. Write a query to count current and discontinued products  */
select count(ProductName) from products group by Discontinued;


/* 10. Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order   */
select * from products;

select ProductName,UnitsInStock,UnitsOnOrder from products where (((UnitsInStock)<(UnitsOnOrder)) and ((UnitsInStock)<(UnitsOnOrder)));

