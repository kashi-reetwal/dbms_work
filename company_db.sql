-- ============================================================
--  DBMS Lab | company_db
--  Author  : Kashi Reetwal
--  Topics  : DDL · DML · Constraints · Aggregates
-- ============================================================

-- -------------------------------------------------------------
-- 1. DATABASE SETUP
-- -------------------------------------------------------------
CREATE DATABASE company_db;
USE company_db;

-- -------------------------------------------------------------
-- 2. DDL – CREATE TABLE WITH CONSTRAINTS
--    • PRIMARY KEY   ? emp_id (uniquely identifies each row)
--    • NOT NULL      ? name cannot be empty
--    • UNIQUE        ? email must be unique across all rows
--    • CHECK         ? age >= 18  |  salary > 0
--    • DEFAULT       ? department = General , salary = 30000
-- -------------------------------------------------------------
CREATE TABLE employee (
    emp_id     INT            PRIMARY KEY,
    name       VARCHAR(20)    NOT NULL,
    email      VARCHAR(100)   UNIQUE,
    age        INT            CHECK (age >= 18),
    department VARCHAR(100)   DEFAULT 'General',
    salary     DECIMAL(10,2)  DEFAULT 30000 CHECK (salary > 0)
);

-- -------------------------------------------------------------
-- 3. DML – INSERT ROWS
--    Last insert omits department & salary -> defaults kick in
-- -------------------------------------------------------------
INSERT INTO employee VALUES (1, 'Kashi',  'aman@co.com',   25, 'IT',      45000);
INSERT INTO employee VALUES (2, 'Shivam', 'riya@co.com',   28, 'HR',      40000);
INSERT INTO employee VALUES (3, 'Krish',  'karan@co.com',  32, 'IT',      60000);
INSERT INTO employee VALUES (4, 'Neha',   'neha@co.com',   24, 'Finance', 35000);

-- Partial insert – department & salary use DEFAULT values
INSERT INTO employee (emp_id, name, email, age)
VALUES (5, 'Simran', 'simran@co.com', 27);

-- -------------------------------------------------------------
-- 4. DML – SELECT (READ)
-- -------------------------------------------------------------
SELECT * FROM employee;                          -- all employees
SELECT * FROM employee WHERE salary > 40000;     -- high earners

-- -------------------------------------------------------------
-- 5. DML – UPDATE
--    Give HR department a Rs.50,000 raise
-- -------------------------------------------------------------
SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET    salary = salary + 50000
WHERE  department = 'HR';

SELECT * FROM employee;

-- -------------------------------------------------------------
-- 6. DML – DELETE
-- -------------------------------------------------------------
DELETE FROM employee WHERE emp_id = 4;
SELECT * FROM employee;

-- -------------------------------------------------------------
-- 7. DDL – ALTER TABLE (add column)
-- -------------------------------------------------------------
ALTER TABLE employee ADD COLUMN score INT DEFAULT 90;
SELECT * FROM employee;

-- -------------------------------------------------------------
-- 8. DDL – TRUNCATE TABLE (removes data, keeps schema)
-- -------------------------------------------------------------
TRUNCATE TABLE employee;
SELECT * FROM employee;

-- -------------------------------------------------------------
-- 9. DDL – DROP TABLE (removes table entirely)
-- -------------------------------------------------------------
DROP TABLE employee;
SELECT * FROM employee;   -- ERROR expected: table gone

-- -------------------------------------------------------------
-- 10. AGGREGATE
-- -------------------------------------------------------------
SELECT COUNT(*) FROM employee;
