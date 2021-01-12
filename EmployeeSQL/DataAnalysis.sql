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

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employees AS e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

