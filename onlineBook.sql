CREATE database book;


CREATE table books(bookid INT,
                   title VARCHAR(30),
                   author VARCHAR(30),
                   price INT,
                   stock INT);


INSERT INTO BOOKS VALUES(1, 'Learn SQL', 'John Smith', 400, 10);
INSERT INTO BOOKS VALUES(2, 'Mastering Python', 'Jane Doe', 600, 5)
INSERT INTO BOOKS VALUES(3, 'HTML & CSS Basics', 'Alan Webb', 300, 8)


UPDATE books 
SET price = price + 50, stock = 12 
WHERE title = 'Learn SQL';

UPDATE books
SET stock=stock-2
WHERE price>500;


DELETE FROM books WHERE bookid=3;