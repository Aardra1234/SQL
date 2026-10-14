CREATE DATABASE college;

CREATE TABLE students(id INT,name VARCHAR(15),age INT,department VARCHAR(20),grade INT);

INSERT INTO students VALUES (01,"Malavika",19,"Physics",88);
INSERT INTO students VALUES (02,"Ananya",22,"Chemistry",90);
INSERT INTO students VALUES (03,"Karthik",20,"Computer Science",99);
INSERT INTO students VALUES (04,"Anugraha",23,"Physics",78);

SELECT * from students where age>20;

SELECT * FROM students WHERE department = 'Computer Science' OR department = 'Physics';

SELECT * from students where grade=90;

SELECT * from students where grade BETWEEN 70 AND 90;
