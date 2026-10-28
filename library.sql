CREATE DATABASE library;

CREATE TABLE books(book_id INT,title VARCHAR(30));

CREATE TABLE borrowers(borrower_id INT,'name' VARCHAR(30),book_id INT);

select books.title,borrowers.name  from books LEFT JOIN borrowers ON books.book_id=borrowers.book_id;

SELECT borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON books.book_id = borrowers.book_id;

SELECT books.book_id, books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.borrower_id IS NULL;

SELECT borrowers.borrower_id, borrowers.name, books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

