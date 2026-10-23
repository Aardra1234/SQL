CREATE DATABASE onlineBookstore;

CREATE TABLE books(id INT,
				title VARCHAR(30),
				author VARCHAR(30),
				genre VARCHAR(30),
				price DECIMAL,
				copies_sold INT);

CREATE TABLE bestsellers(id INT,
				title VARCHAR(30),
				author VARCHAR(30),
				genre VARCHAR(30),
				price DECIMAL,
				copies_sold INT);


INSERT INTO books VALUES(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
						(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
						(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);


INSERT INTO bestsellers VALUES(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
							  (5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);


SELECT title, author FROM books
UNION ALL
SELECT title, author FROM bestsellers;

SELECT * FROM books WHERE price>400;

SELECT AVG(price) AS AVG_PRICE FROM books;

SELECT COUNT(*) 
FROM books;

SELECT title AS BookTitle,author AS WrittenBy FROM books;

