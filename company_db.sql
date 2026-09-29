CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employee (
    emp_id     INT            PRIMARY KEY,
    name       VARCHAR(20)    NOT NULL,
    email      VARCHAR(100)   UNIQUE,
    age        INT            CHECK (age >= 18),
    department VARCHAR(100)   DEFAULT 'General',
    salary     DECIMAL(10,2)  DEFAULT 30000 CHECK (salary > 0)
);

INSERT INTO employee VALUES (1, 'Kashi',  'aman@co.com',   25, 'IT',      45000);
INSERT INTO employee VALUES (2, 'Shivam', 'riya@co.com',   28, 'HR',      40000);
INSERT INTO employee VALUES (3, 'Krish',  'karan@co.com',  32, 'IT',      60000);
INSERT INTO employee VALUES (4, 'Neha',   'neha@co.com',   24, 'Finance', 35000);


INSERT INTO employee (emp_id, name, email, age)
VALUES (5, 'Simran', 'simran@co.com', 27);


SELECT * FROM employee;                          
SELECT * FROM employee WHERE salary > 40000;     

SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET    salary = salary + 50000
WHERE  department = 'HR';

SELECT * FROM employee;

DELETE FROM employee WHERE emp_id = 4;
SELECT * FROM employee;


ALTER TABLE employee ADD COLUMN score INT DEFAULT 90;
SELECT * FROM employee;

TRUNCATE TABLE employee;
SELECT * FROM employee;

DROP TABLE employee;
SELECT * FROM employee;  

SELECT COUNT(*) FROM employee;
