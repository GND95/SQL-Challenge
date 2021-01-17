-- This query will return information about the frequency of employees who share a last name.

SELECT last_name, COUNT(last_name) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY frequency_count DESC