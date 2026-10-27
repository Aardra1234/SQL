CREATE database course;

CREATE table students(id INT,Names VARCHAR(30),course VARCHAR(30),score INT,email VARCHAR(30),phone VARCHAR(30),city VARCHAR(30),bonus_points INT);

INSERT into students VALUES(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

SELECT course, AVG(score) AS average_score
FROM students
GROUP BY course
HAVING AVG(score) > 80;

SELECT Names,scores from students where city='Chennai' OR city='Mumbai';

SELECT * from students where bonus_points IS NULL;

SELECT Names from students where city='Chennai' UNION SELECT Names from students where city='Mumbai';
