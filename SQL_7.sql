-- SQL SUB-QUERY

CREATE DATABASE subquery;

USE subquery;

DROP TABLE student;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(50)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 92, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

SELECT AVG(marks)
FROM student;

SELECT name, marks
FROM student
WHERE marks > 87.6667;

-- Subquery

SELECT name, marks
FROM student
WHERE marks > 
(SELECT AVG(marks) FROM student);

SELECT rollno 
FROM student
WHERE rollno % 2 =0;

SELECT  name, rollno
FROM student
WHERE rollno % 2 = 0;
(SELECT rollno FROM student);

SELECT name, rollno
FROM student 
WHERE rollno IN (
	SELECT rollno
    FROM student
    WHERE rollno % 2 = 0);

-- Subquery in FROM
SELECT MAX(marks) 
FROM (SELECT * FROM student WHERE city = 'Delhi') AS temp;


