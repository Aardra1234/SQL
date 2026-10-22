CREATE database training;

CREATE table students(id INT,
                      name VARCHAR(30),
                      course VARCHAR(30),
                      fees_paid INT,
                      status VARCHAR(10));


INSERT INTO students VALUES(1, 'Alice', 'Web Development', 5000, 'Inactive');
INSERT INTO students VALUES(2, 'Bob', 'Data Science', 7000, 'Inactive');
INSERT INTO students VALUES(3, 'Charlie', 'UI/UX Design', 4000, 'Active');


SELECT * FROM students WHERE fees_paid > 5000;

UPDATE students SET status='Active' WHERE course='Web Development';

UPDATE students SET fees_paid=fees_paid+1000 WHERE course='Data Science';

UPDATE students SET status='Inactive',fees_paid=fees_paid-500 WHERE id=3;

DELETE FROM students WHERE id=2;

DELETE FROM students where status='Inactive';

