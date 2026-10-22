CREATE DATABASE onlineBook;

CREATE TABLE books(id INT,
				title VARCHAR(30),
			    author VARCHAR(30),
				price INT,
				stock INT);


INSERT INTO books VALUES(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
						(2, 'Atomic Habits', 'James Clear', 450, 40),
						(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
						(4, 'Ikigai', 'Francesc Miralles', 300, 60),
						(5, 'Deep Work', 'Cal Newport', 500, 20);


SELECT * from books where price<450 AND stock>30;

UPDATE books
SET stock=45,price=420
WHERE title='Deep Work';

DELETE FROM books WHERE title='Ikigai';

SELECT AVG(price) as Average_Price, COUNT(*) AS number_of_books FROM books;

SELECT * FROM books ORDER BY price DESC LIMIT 3;

