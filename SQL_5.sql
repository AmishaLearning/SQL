CREATE DATABASE alter_database;

USE alter_database;

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

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student_details
RENAME TO student;

-- ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY COLUMN
ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

-- CHANGE COLUMN RENAME
ALTER TABLE student
CHANGE age stu_age INT;

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN stu_age;

-- RENAME TABLE
ALTER TABLE stu_details
RENAME TO student;

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(107, "gargi", 68, 100);

SELECT * FROM student;

-- Delete Table data
TRUNCATE TABLE student;

-- The below command requires safe mode to be turned off
-- DELETE FROM student; 