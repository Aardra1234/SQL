CREATE DATABASE bookstore;

CREATE table book(id INT,title VARCHAR(20),author VARCHAR(20),price INT,stock_status VARCHAR(20),genre VARCHAR(20));

INSERT INTO book VALUES
(1, 'Wings of Fire', 'APJ Abdul Kalam', 350, 'In Stock', 'Biography'),
(2, 'Harry Potter', 'J K Rowling', 550, 'In Stock', 'Fantasy'),
(3, 'The Alchemist', 'Paulo Coelho', 300, 'In Stock', 'Fiction'),
(4, 'Atomic Habits', 'James Clear', 750, 'Out of Stock', 'Self Help'),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 800, 'In Stock', 'Finance');

SELECT DISTINCT genre FROM book;

SELECT * FROM book WHERE stock_status="in stock" AND price<400;

SELECT * FROM book WHERE stock_status="out of stock" OR price>700;

SELECT title,price,price * 1.10 AS price_with_gst FROM book;

SELECT title,price,stock_status FROM book ORDER BY price DESC;