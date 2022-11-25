CREATE TABLE departments (
  	dept_no PRIMARY KEY, 
  	dept_name character varying(30) NOT NULL
);

CREATE TABLE employees(
  	emp_no integer PRIMARY KEY,
  	emp_title character varying(5) NOT NULL,
	birth_date timestamp without time zone NOT NULL,
  	first_name character varying(30) NOT NULL,
	last_name character varying(30) NOT NULL,
	sex character varying(1) NOT NULL, 
	hire_date timestamp without time zone NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);	

CREATE TABLE dept_emp (
	dep_id SERIAL PRIMARY KEY, 
	emp_no integer NOT NULL,
  	dept_no character varying(30) NOT NULL,
	FOREIGN KEY (dep_no) REFERENCES departments(dept_no)
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	
CREATE TABLE salaries (
	salary_id SERIAL PRIMARY KEY
	emp_no integer NOT NULL,
	salaries integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	
CREATE TABLE titles (
  	title_id PRIMARY KEY,
  	title character varying(30) NOT NULL
);
	
CREATE TABLE dept_manager (
	dept_id SERIAL PRIMARY KEY,
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);