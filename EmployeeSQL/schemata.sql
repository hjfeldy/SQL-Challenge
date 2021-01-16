CREATE TABLE employees (
	emp_no int PRIMARY KEY,
	emp_title_id varchar,
	birth_date timestamp,
	first_name varchar,
	last_name varchar,
	sex varchar(1),
	hire_date timestamp
);

CREATE TABLE dept_emp (
	emp_no int,
	dept_no varchar,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE departments (
	dept_no varchar PRIMARY KEY,
	dept_name varchar
);

CREATE TABLE dept_manager (
	dept_no varchar,
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE titles (
	title_id varchar PRIMARY KEY,
	title varchar
);

CREATE TABLE salaries (
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
