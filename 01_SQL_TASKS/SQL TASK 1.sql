--TASK 1 DDL COMMANDS:
--CREATING DEPARTMENT TABLE
CREATE TABLE Departments (
   department_id INTEGER PRIMARY KEY,
   department_name VARCHAR(50),
   location VARCHAR(50)
);

--CREATING EMPLOYEES TABLE
CREATE TABLE Employees (
   employee_id INTEGER PRIMARY KEY,
   employee_name VARCHAR(100),
   email VARCHAR(100),
   salary DECIMAL,
   department_id INTEGER,
   city VARCHAR(50),
   joining_date DATE,
   FOREIGN KEY (department_id)
   REFERENCES
   departments(department_id)
);
--Adding new column phone_number to employees table using ALTER.

ALTER TABLE employees
ADD COLUMN phone_number
VARCHAR(10);

--Changing the size of city column
ALTER TABLE employees
ALTER COLUMN city TYPE
VARCHAR(100);

--Rename phone_number to contact_number
ALTER TABLE employees
RENAME COLUMN phone_number TO contact_number;

--Create a practice table
CREATE TABLE practice_table(
   id INTEGER,
   name VARCHAR(50)
);

--Truncate practice_table
TRUNCATE TABLE practice_table;

SELECT * FROM practice_table

--Drop the practice_table
DROP TABLE practice_table;








