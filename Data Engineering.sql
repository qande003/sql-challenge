DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
	dept_no VARCHAR (4) PRIMARY KEY,
	dept_name VARCHAR (30)
	
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,   
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY(emp_no, dept_no)
	
);

CREATE TABLE dept_manager (
	dept_no VARCHAR (4) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);


CREATE TABLE titles (
	title_id VARCHAR (10) PRIMARY KEY,
	title VARCHAR (40)
	
);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (10),
	birth_date VARCHAR (20),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (5),
	hire_date VARCHAR (20),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	
);

select * from employees
