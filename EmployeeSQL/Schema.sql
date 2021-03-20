-- Part I. Data Engineering. Creating Tables Schema to Fill Them
-- Delete previous tables
DROP TABLE employees, departments, dept_manager, dept_emp, titles, salaries;

-- Create tables schema
CREATE TABLE employees (
	emp_no 		INT 	NOT NULL PRIMARY KEY,
	birth_date 	DATE 	NOT NULL,
	first_name 	VARCHAR NOT NULL,
	last_name 	VARCHAR NOT NULL,
	gender 		VARCHAR NOT NULL,
	hire_date 	DATE 	NOT NULL
);
SELECT * FROM employees;

CREATE TABLE departments (
	dept_no 	VARCHAR NOT NULL PRIMARY KEY,
	dept_name 	VARCHAR NOT NULL
);
SELECT * FROM departments;

CREATE TABLE dept_manager (
	dept_no 	VARCHAR NOT NULL,
	emp_no 		INT 	NOT NULL,
	from_date 	DATE 	NOT NULL,
	to_date 	DATE 	NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_manager;

CREATE TABLE dept_emp (
	emp_no 		INT 	NOT NULL,
	dept_no 	VARCHAR NOT NULL,
	from_date 	DATE	NOT NULL,
	to_date 	DATE	NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_emp;

CREATE TABLE salaries (
	emp_no 		INT 	NOT NULL PRIMARY KEY,
	salary 		INT		NOT NULL,
	from_date 	DATE	NOT NULL,
	to_date 	DATE	NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
SELECT * FROM salaries;

CREATE TABLE titles (
	emp_no 		INT 	NOT NULL,
	title  		VARCHAR NOT NULL,
	from_date 	DATE	NOT NULL,	
	to_date 	DATE,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
SELECT * FROM titles;



























