--Task 6 • JOINS 
--INNER JOIN - Display Employee Name, Salary, and Department Name.
SELECT employees.employee_name, employees.salary, departments.department_name
FROM employees 
INNER JOIN departments
ON employees.department_id = departments.department_id;

--LEFT JOIN = Display all departments, including departments that currently have no employees.
SELECT
departments.department_name, departments.location, employees.employee_name, employees.salary
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--RIGHT JOIN- Display employee and department information using RIGHT JOIN.
SELECT
e.employee_name, e.salary, d.department_name, d.location
FROM employees e
RIGHT JOIN departments d
ON e.department_id=d.department_id

--FULL OUTER JOIN- Display all employee and department records.
SELECT
e.employee_id, e.employee_name, e.email, e.salary, e.department_id, e.city, e.joining_date, e.contact_number,
d.department_name, d.location
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id=d.department_id;















