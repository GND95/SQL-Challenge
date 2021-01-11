-- This query will return the employee number, the last name, the first name, the sex, 
-- and the salary for the employees. 

SELECT e.emp_no AS "employee number", e.last_name AS "last name", e.first_name AS "first name", e.sex, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;