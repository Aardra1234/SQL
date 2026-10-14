CREATE table books(id INT,title VARCHAR(20),author VARCHAR(20),price INT,genre VARCHAR(20));

INSERT INTO books (id, title, author, price, genre) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 350, 'Fiction'),
(2, 'A Brief History', 'Stephen Hawking', 450, 'Science'),
(3, 'Sapiens', 'Yuval Noah Harari', 499, 'History'),
(4, 'The Da Vinci Code', 'Dan Brown', 299, 'Thriller'),
(5, 'Dune', 'Frank Herbert', 550, 'Sci-Fi');

SELECT * from books WHERE price>400;

SELECT * from books where genre="History" OR genre="Science" OR genre="Fiction";

SELECT * from books where title="The Great Gatsby";

SELECT * from books where author<>"Dan Brown";