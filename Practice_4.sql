CREATE DATABASE practice_5;

USE practice_5;

CREATE TABLE  student_table(
id INT PRIMARY KEY NOT NULL,
name VARCHAR(50),
marks INT NOT NULL,
grades VARCHAR(2)
);

DROP TABLE student_table;

INSERT INTO student_table
(id, name, marks, grades)
VALUES
(101, "anil", 78, "C"),
(102, "bhumika", 93, "A"),
(103, "chetan", 85, "B"),
(104, "dhruv", 96, "A"),
(105, "emanuel", 12, "F"),
(106, "farah", 82, "B");

SELECT * FROM student_table;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student_table
WHERE marks < 80;

ALTER TABLE student_table
DROP COLUMN grades;

ALTER TABLE student_table
CHANGE COLUMN name full_name VARCHAR(50);


