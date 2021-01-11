-- This query will return first name, last name, and hire date for employees who were hired in 1986

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE TO_CHAR(e.hire_date, 'YYYY-MM-DD') LIKE '1986%';
-- casting to char to be able to use LIKE since you cannot use LIKE on a data type of date