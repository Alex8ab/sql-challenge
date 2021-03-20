-- Part II. Data Analysis. Perform queries for next points.
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary 
FROM employees AS emp 
JOIN salaries AS sal 
ON emp.emp_no = sal.emp_no

-- List employees who were hired in 1986.
SELECT emp_no, last_name, first_name 
FROM employees 
WHERE hire_date >= '01-01-1986' AND hire_date <= '12-31-1986' 
ORDER BY last_name

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
Select dep.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name, man.from_date, man.to_date 
FROM employees AS emp 
JOIN dept_manager AS man ON emp.emp_no = man.emp_no 
JOIN departments AS dep ON man.dept_no = dep.dept_no
ORDER BY dept_name, last_name

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name 
FROM employees AS emp 
INNER JOIN dept_emp AS dem ON emp.emp_no = dem.emp_no 
INNER JOIN departments AS dep ON dem.dept_no = dep.dept_no
ORDER BY last_name

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees 
WHERE first_name = 'Hercules' AND last_name 
LIKE 'B%'
ORDER BY last_name

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp 
INNER JOIN dept_emp AS dem ON emp.emp_no = dem.emp_no 
INNER JOIN departments AS dep ON dem.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales'
ORDER BY last_name

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp 
INNER JOIN dept_emp AS dem ON emp.emp_no = dem.emp_no 
INNER JOIN departments AS dep ON dem.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development'
ORDER BY last_name

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT count(last_name) AS Frequency, last_name
FROM employees 
GROUP BY last_name
ORDER BY frequency DESC, last_name

-- Epilogue
-- "Search your ID number." Your employee ID number is 499942.
SELECT emp_no, last_name, first_name FROM employees WHERE emp_no = 499942


























