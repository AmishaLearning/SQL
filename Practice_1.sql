-- CREATE DATABASE companyXYZ;

-- USE companyXYZ; 

-- CREATE TABLE employee_info(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- salary INT
-- );

-- INSERT INTO employee_info
-- (id, name, salary)
-- VALUES
-- (1, "adam", 25000),
-- (2, "bob", 30000),
-- (3, "casey", 40000 );

-- DELETE FROM employee_info WHERE id = 1;

CREATE TABLE city(
id INT PRIMARY KEY,
city VARCHAR(50),
age INT,
CONSTRAINT age_check CHECK (age >= 18 AND city = "Delhi")
);

DROP TABLE city;

  
