--Task 2- DML Commands
--1.  Insert at least 5 departments
INSERT INTO departments(department_id, department_name, location)
VALUES
(1, 'IT', 'Mumbai'),
(2,'HR', 'Mumbai'),
(3, 'Finance', 'Pune'),
(4, 'Sales', 'Nashik'),
(5, 'Testing', 'Mumbai');

--2. Insert at least 10 employees.
INSERT INTO employees
(employee_id, employee_name, email, salary, department_id, city, joining_date, contact_number)
VALUES
(1, 'Amit Sharma', 'amit@gmail.com', 45000, 1, 'Mumbai', '2023-01-15', '9876543210'),
(2, 'Priya Shah', 'priya@gmail.com', 55000, 2, 'Pune', '2023-03-10', '9876543211'),
(3, 'Rahul Mehta', 'rahul@gmail.com', 65000, 3, 'Mumbai', '2024-02-20', '9876543212'),
(4, 'Sneha Patil', 'sneha@gmail.com', 35000, 4, 'Pune', '2024-05-12', '9876543213'),
(5, 'Akash Kumar', 'akash@gmail.com', 75000, 5, 'Mumbai', '2024-07-01', '9876543214'),
(6, 'Neha Joshi', 'neha@gmail.com', 28000, 1, 'Thane', '2024-08-15', '9876543215'),
(7, 'Rohan Gupta', 'rohan@gmail.com', 60000, 2, 'Mumbai', '2025-01-10', '9876543216'),
(8, 'Anjali Desai', 'anjali@gmail.com', 50000, 3, 'Pune', '2025-03-18', '9876543217'),
(9, 'Varun Singh', 'varun@gmail.com', 42000, 4, 'Mumbai', '2025-06-25', '9876543218'),
(10, 'Pooja Nair', 'pooja@gmail.com', 70000, 5, 'Nashik', '2025-08-05', '9876543219');

--3. Update the salary of one employee
UPDATE employees
SET salary = 50000
WHERE employee_id = 2;

--4. Update the city Of one employee
UPDATE employees
SET city = 'Nashik'
WHERE employee_id = 2;

--5. update salaries of all employees belonging to one department.
UPDATE employees
SET salary = salary + 5000
WHERE department_id = 5;

--6. Delete one employee record.
SELECT employee_id, employee_name
FROM employees
ORDER BY employee_id;

DELETE FROM employees
WHERE employee_id = 3;

--7. Insert one additional employee after performing the delete operation.
INSERT INTO employees
(employee_id, employee_name, email, salary, department_id, city, joining_date, contact_number)
VALUES
(11, 'Riya Mehta', 'riya.mehta@gmail.com', 48000, 5, 'Mumbai', '2026-09-23', '9876543210');

SELECT * FROM employees
WHERE employee_id = 11;




