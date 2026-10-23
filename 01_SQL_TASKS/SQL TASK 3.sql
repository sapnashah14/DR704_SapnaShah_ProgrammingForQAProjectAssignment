--TASK 3 DQL/SELECT QUERY:
--1 Display all employees.
SELECT * FROM employees;

--2 Display only employee name and salary.
SELECT employee_name, salary FROM employees;

--3 Display employees Whose salary is greater than 50,000.
SELECT * FROM employees
WHERE salary > 50000;

--4. Display employees whose salary is less than 30,000.
SELECT * FROM employees
WHERE salary < 30000;

--5 Display employees whose city is Mumbai.
SELECT * FROM employees
WHERE city='Mumbai';

--6.Display employees Whose salary is between 30,000 and 70,000.
SELECT * FROM employees
WHERE salary between 30000 and 70000;

--7. Display employees from Mumbai or Pune.
SELECT * FROM employees
WHERE city = 'Mumbai' or city = 'Pune';

--8. Display employees Who do not belong to Mumbai.
SELECT * FROM employees
WHERE city<> 'Mumbai'

--9.  Display employees whose names start with A
SELECT * FROM employees
WHERE employee_name LIKE 'A%'

--10.  Display employees whose names contain the letter a.
SELECT * FROM employees
WHERE employee_name ILIKE '%A%'

--11. Display unique city names using DISTINCT.
SELECT DISTINCT city FROM employees;

--12.  Display employees whose department id is in 1, 2 or 3.
SELECT * FROM employees
WHERE department_id IN (1,2,3);














