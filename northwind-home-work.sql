use northwind;

# qustion #1
select * from shippers;

# qustion #2
select * from customers where country = 'USA';

# qustion #3
select * from customers where country = 'USA' and city = 'seattle';

# qustion #4
select * from employees 
where hireDate >= '1993-0-0';

# qustion #5 more than one word
SELECT * FROM products WHERE productName LIKE '% %';    
SELECT count(*) FROM products WHERE productName LIKE '% %';

# qustion #6
select ProductName as Name, UnitPrice as Price, 
UnitsInStock as 'Stock Count', UnitsOnOrder as 'Order Count'
from products 
limit 10;

# qustion #7
select ProductName as Name, UnitPrice as Price, 
UnitPrice * 1.17 as 'Price with VAT', UnitsInStock as 'Stock Count'
from products
order by UnitsInStock, UnitPrice desc;

# qustion #8
SELECT productName, UnitPrice
FROM products, orders
ORDER BY UnitPrice DESC
LIMIT 10;

# qustion #9
SELECT productName, UnitPrice 
FROM products
where UnitPrice between 10 and 20
ORDER BY UnitPrice DESC;

# qustion #10
SELECT productName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM products
where UnitsInStock = 0 or UnitsOnOrder = 0
ORDER BY UnitPrice DESC;

# qustion #11
SELECT productName, UnitPrice, QuantityPerUnit
FROM products
where QuantityPerUnit like '%box%';

# qustion #12
SELECT productName, UnitPrice
FROM products
where productName like 'ch%';

# qustion #13
SELECT lower(productName), CEILING(UnitPrice) AS UnitPrice
FROM products;

# qustion #14
SELECT UPPER(productName) ,round(UnitPrice * 1.17) as 'Price with VAT'
FROM products;

# qustion #15
SELECT left(productName , 5)
FROM products;

# qustion #16
select regexp_substr(ProductName, '^[^ ]+')
from products; 









