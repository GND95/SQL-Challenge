-- This query will return information about people whose first name is "Hercules" and last names begin with "B." 

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'