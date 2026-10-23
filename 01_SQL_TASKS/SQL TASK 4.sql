--Task 4 • SQL Clauses
--WHERE
--Display employees eaming more than 40,000.
SELECT * FROM employees
WHERE salary > 40000;

--ORDER BY • Display all employees sorted by salary from highest to lowest.
SELECT * FROM employees
ORDER BY salary DESC;

--• Display all employees sorted alphabetically by employee name.
SELECT * FROM employees
ORDER BY employee_name ASC;

--GROUP BY - Display the total number Of employees in each department.
SELECT department_id, COUNT(*) AS total_employees FROM employees
GROUP BY department_id;

--HAVING -Display departments having more than 2 employees.
SELECT department_id, COUNT(*) AS total_employees FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;










