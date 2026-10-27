
Add a new column called published_year (number) to the books table.
Delete all rows from the books table without removing the table itself.
Remove the BookStoreDB completely from the system.

Create database BookStoreDB;

use BookStoreDB;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    price INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

ALTER TABLE books Add published_year INT;

DELETE FROM books;

DROP DATABASE BookStoreDB;
