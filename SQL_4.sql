CREATE DATABASE department_data;
USE department_data;

-- DROP TABLE department;

CREATE TABLE department(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO department
VALUES
(101, "English"),
(102, "IT");

UPDATE department
SET id = 103
WHERE id = 102;

SELECT * FROM department;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(id)
ON UPDATE CASCADE 
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;