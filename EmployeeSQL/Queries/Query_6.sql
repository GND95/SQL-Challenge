-- This query will return information about all employees in the Sales department.

DROP VIEW IF EXISTS sales_employees;
CREATE VIEW sales_employees AS
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no
FROM employees e
JOIN dept_emp de
ON (e.emp_no = de.emp_no)
WHERE de.dept_no IN
(
	SELECT dept_no
	FROM departments
	WHERE dept_name = 'Sales'
);
SELECT se.emp_no, se.last_name, se.first_name, d.dept_name
FROM sales_employees se
JOIN departments d
ON (se.dept_no = d.dept_no);