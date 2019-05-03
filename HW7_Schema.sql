DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no VARCHAR(5) NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	gender VARCHAR(5) NOT NULL,
	hire_date date NOT NULL
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);
