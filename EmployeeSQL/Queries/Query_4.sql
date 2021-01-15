-- This query will return the employees and their department names at this company. 
-- The result will list the employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
INNER JOIN departments d ON
d.dept_no=de.dept_no
INNER JOIN employees e ON
de.emp_no=e.emp_no