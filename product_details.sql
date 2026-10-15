CREATE DATABASE productdetails;

CREATE TABLE products(id INT,name VARCHAR(20),category VARCHAR(20),price INT,in_stock VARCHAR(10));

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 55000, 'Yes'),
(2, 'Mouse', 'Electronics', 500, 'Yes'),
(3, 'Office Chair', 'Furniture', 3500, 'No'),
(4, 'Notebook', 'Stationery', 80, 'Yes'),
(5, 'Keyboard', 'Electronics', 1200, 'No');

SELECT DISTINCT category FROM products;

SELECT * FROM products WHERE in_stock="yes" AND price<500;

SELECT * FROM products WHERE in_stock="no" AND price>1000;

SELECT name,price FROM products ORDER BY price DESC;

SELECT name,price*1.18 AS price_with_tax FROM products;

