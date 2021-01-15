-- This query will return the managers at this company. 
-- The result will list the department number, department name, the manager's employee number, last name, and first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON
d.dept_no=dm.dept_no
INNER JOIN employees e ON
dm.emp_no=e.emp_no