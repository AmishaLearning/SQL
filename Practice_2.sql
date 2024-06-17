CREATE DATABASE practice_2;
USE practice_2;

DROP TABLE students_marks;

CREATE TABLE students_marks(
id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
marks FLOAT NOT NULL
);

INSERT INTO students_marks
(id, name, city, marks)
VALUES
(1, "Ram", "Mumbai", 80.5),
(2, "Shyam", "Pune", 90.25),
(3, "Karan", "Mumbai", 95.75),
(4, "Arjun", "Delhi", 80.5),
(5, "Jay", "Delhi", 90.25),
(6, "Veeru", "Delhi", 95.75);

SELECT * FROM students_marks;

SELECT city, AVG(marks)
FROM students_marks
GROUP BY city
ORDER BY city ASC;



