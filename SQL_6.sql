CREATE DATABASE joins;

USE joins;

CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student 
(student_id, name)
 VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

DROP TABLE course;

CREATE TABLE course(
student_id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course
(student_id, course)
VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

SELECT * FROM student;
SELECT * FROM course;

-- Inner join
SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;

-- Left join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- Right join
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- Full join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- Left Exclusive join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- Right Exclusive join
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- Full Exclusive join
SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee 
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT name FROM employee
UNION 
SELECT name FROM employee;


