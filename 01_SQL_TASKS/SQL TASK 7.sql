--Task 7 • TCL Commands
--COMMIT
--I. Insert a new employee

INSERT INTO employees
(employee_id, employee_name, email, salary, department_id, city, joining_date, contact_number)
VALUES
(12, 'Rahul Mehta', 'rahul.mehta@gmail.com', 88000, 2, 'Mumbai', '2026-09-24', '9876541231');

--2. Execute COMMIT.
COMMIT;

--3. Verify the record
SELECT * FROM employees
WHERE employee_id=12;

--ROLLBACK
--I. Update an employee's salary
BEGIN;
UPDATE employees
SET salary=65000
WHERE employee_id=1;

--2. Execute ROLLBACK.
ROLLBACk;

--3. Verify that the old salary is restored.
SELECT employee_id, employee_name, salary
FROM employees
WHERE employee_id=1;

--SAVEPOINT
--Execute the following transaction and explain what happens after ROLLBACK TO salary_updated.
BEGIN;

UPDATE employees
SET salary = 60000
WHERE employee_id=1;
SAVEPOINT salary_updated;

DELETE FROM employees
WHERE employee_id = 2;

ROLLBACK TO salary_updated ;
COMMIT;

SELECT * FROM employees
WHERE employee_id IN (1, 2);













