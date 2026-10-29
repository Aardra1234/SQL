CREATE DATABASE training;

CREATE table students(student_id INT,name VARCHAR(30),email VARCHAR(30),UNIQUE(student_id,email));

INSERT into students VALUES(1,"Arathy","arathy@gmail.com"),
							(2,"Parvathy","parvathy@gmail.com"),
                            (3,"Nandana","nandana@gmail.com");

CREATE table courses(course_id INT,course_name VARCHAR(30),UNIQUE(course_id));

INSERT into courses VALUES(1,"python"),
						  (2,"java"),
                          (3,"C");

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
