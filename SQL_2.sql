CREATE DATABASE college;
USE college;

CREATE TABLE  student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student
(rollno, name)
VALUES
(101, "RAM"),
(102, "Arjun");

INSERT INTO student
(rollno, name)
VALUES
(103, "Karan"),
(104, "Shyam");

SELECT * FROM student;
 