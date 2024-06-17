CREATE DATABASE college_data;

USE college_data;

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
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

SELECT name, marks FROM student;
-- Distinct Keyword-- 
SELECT DISTINCT city FROM student;

-- Where Clause
SELECT name, marks FROM student
WHERE marks > 80;

SELECT name, city FROM student
WHERE city = "Mumbai";

SELECT * FROM student
WHERE city = "Mumbai";

SELECT * FROM student
WHERE marks + 10 > 100;

-- AND Operator
SELECT * FROM student
WHERE marks > 80 AND city = "Mumbai";
 
-- OR Operator
SELECT * FROM  student
WHERE marks > 80 OR grade = "A";

-- BETWEEN Operator
SELECT * FROM student
WHERE marks BETWEEN 70 AND 80;

-- IN Operator
SELECT * FROM student
WHERE grade IN ("A", "C");

-- NOT IN Operator
SELECT * FROM student
WHERE city NOT IN ("Pune", "Mumbai");

-- LIMIT Clause
SELECT * FROM student 
WHERE marks > 70 LIMIT 3;

-- ORDER BY Clause 
SELECT * FROM student
ORDER BY marks ASC;

SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;

-- Aggregate Functions
SELECT AVG(marks)
FROM student;

SELECT MAX(marks)
FROM student;

SELECT COUNT(city) FROM student;

SELECT COUNT(city) FROM student
WHERE city = 'Mumbai';

-- GROUP BY
SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city;

SELECT grade, COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade ASC;

-- Count no. of students in each city where max marks exceed 90
SELECT city, COUNT(name)
FROM student
GROUP BY city
HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student 
SET grade = "O"
WHERE grade = "A";

UPDATE student 
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET grade = "F"
WHERE rollno = 105;

-- To delete complete data of table 
-- DELETE FROM student;

DELETE FROM student
WHERE marks < 33;

SELECT * FROM student;