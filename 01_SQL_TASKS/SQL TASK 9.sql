--Task 9 • SQL Challenge Questions
--1. Find the second-highest salary
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
SELECT MAX(salary)
FROM employees
);

--2. Find employees earning more than the average salary.
SELECT employee_id, employee_name, salary 
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees
);

--3. Find the department having the highest number Of employees
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

--4. Find employees having the same salary.
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary IN (
SELECT salary
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1
)
ORDER BY salary;

--5 Find employees who joined after January 1, 2025.
SELECT employee_id, employee_name, joining_date
FROM employees
WHERE joining_date > '2025-01-01';

--6. Display the top 3 highest-paid employees
SELECT employee_id, employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

--7. Display employees whose salary is above 50,000 and city is Mumbai.
SELECT employee_id, employee_name, salary, city
FROM employees
WHERE salary > 50000 
AND city = 'Mumbai';

--8. Display departments where the average salary is greater than 40,000.
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 40000

--9. Find the employee With the lowest salary
SELECT employee_id, employee_name, salary
From employees
ORDER BY salary ASC
LIMIT 1;

--OR
SELECT employee_id, employee_name, salary
From employees
WHERE salary = (
SELECT MIN(salary)
FROM employees
);

--IO. Count employees city-wise.
SELECT city,
COUNT(*) AS employee_count
FROM employees e
GROUP BY city
ORDER BY COUNT(*) DESC;















































