--Task 5 Aggregate Functions
--1.  Find the total number Of employees.

SELECT COUNT(*) AS
total_employees
FROM employees;

--2.  Find the total salary of all employees
SELECT SUM(salary)AS
total_salary FROM employees;

--3. Find the average employee salary.
SELECT AVG(salary) AS 
avarage_salary 
FROM employees;

--4. Find the minimum salary.
SELECT MIN(salary) AS
minimum_salary
FROM employees;

--5. Find the maximum salary.
SELECT MAX(salary) AS
maximum_salary
FROM employees;

--6. Find average salary department-wise.
SELECT department_id, AVG(salary)
AS avarage_salary
FROM employees
GROUP BY department_id;

--7 Find number of employees department-wise
SELECT department_id, COUNT(*) AS
number_of_employees
FROM employees
GROUP BY department_id;

--8. Find maximum salary department-wise.
SELECT department_id, MAX(salary) AS
max_salary_department_wise
FROM employees
GROUP BY department_id;































