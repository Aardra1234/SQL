
Display the names of users who are participating in the same challenge as the user named 'Farah'.

CREATE database mobileapp;

CREATE table users(id INT, names VARCHAR(30),city VARCHAR(30),score INT,bonus INT,challenge VARCHAR(30));

INSERT INTO users VALUES
(1, 'Raj', 'Chennai', 88, 5, 'Fitness'),
(2, 'Anu', 'Mumbai', 91, NULL, 'Diet'),
(3, 'Ravi', 'Chennai', 78, 3, 'Fitness'),
(4, 'Meena', 'Delhi', 82, NULL, 'Diet'),
(5, 'Farah', 'Mumbai', 95, 4, 'Fitness'),
(6, 'Kiran', 'Pune', 70, NULL, 'Yoga'),
(7, 'Latha', 'Pune', 87, NULL, 'Fitness');

SELECT *
FROM users
WHERE score > (
    SELECT AVG(score)
    FROM users
);

SELECT name
FROM users
WHERE challenge = (
    SELECT challenge
    FROM users
    WHERE name = 'Farah'
);

