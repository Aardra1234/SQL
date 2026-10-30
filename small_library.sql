
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE INDEX idx_author_id ON books(author_id);