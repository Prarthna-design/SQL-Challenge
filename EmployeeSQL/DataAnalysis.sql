-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
	e.emp_no AS "Employee Number",
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex",
	salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;