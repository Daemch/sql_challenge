DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
    title_id VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);


DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(255) NOT NULL,
    hire_date VARCHAR(255) NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT,
    dept_no VARCHAR(255),
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
    dept_no VARCHAR(255) NOT NULL,
    emp_no INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


SELECT * 
FROM departments;
SELECT * 
FROM dept_emp;
SELECT * 
FROM employees;
SELECT * 
FROM dept_manager;
SELECT * 
FROM salaries;
SELECT * 
FROM titles;
