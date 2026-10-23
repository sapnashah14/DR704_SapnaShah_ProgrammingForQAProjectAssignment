--Task 8 • DCL Commands
--Write examples of GRANT and REVOKE.
--Scenario: Create or assume a user named student_user. provide SELECT permission on the employees
--table, then remove that SELECT permission.
CREATE USER student_user WITH 
password 'Student@123';

--GRANT
GRANT SELECT ON employees TO student_user;

--VERIFICATION
SELECT has_table_privilege(
'student_user',
'employees',
'SELECT'
);

--REVOKE
REVOKE SELECT ON employees FROM student_user;

--REVOKE VERIFICATION
SELECT has_table_privilege(
'student_user',
'employees',
'SELECT'
);













