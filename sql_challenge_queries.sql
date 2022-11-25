--(1)List the employee number, last name, first name, sex, and salary of each employee
SELECT 
e.emp_no, 
e.last_name, 
e.sex,
s.salaries
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no

--(2)List the first name, last name, and hire date for the employees who were hired in 1986 

SELECT
e.first_name,
e.last_name, 
e.hire_date
FROM employees as e
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

--(3)List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT
dm.dept_id as "Department Manager",
dm.dep_id,
dp.dept_name,
dm.emp_no,
em.last_name,
em.first_name
FROM dept_manager as dm INNER JOIN departments as dp 
ON dm.dept_id = dp.dept_id 
INNER JOIN employees as em 
ON em.emp_no = dm.emp_no; 

--(4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
de.dept_no,
de.emp_no,
em.last_name, 
em.first_name, 
dp.dept_name
FROM dept_emp as de INNER JOIN departments as dp 
ON de.dept_no = dp.dept_id
INNER JOIN employees as em
ON em.emp_no = de.emp_no; 

--(5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
first_name,
last_name, 
sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--(6) List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
em.emp_no, 
em.last_name, 
em.first_name,
dm.dept_id
FROM employees as em
INNER JOIN dept_manager as dm 
ON dm.emp_no = em.emp_no 
WHERE dm.dept_id = 'd007';

--(7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
em.emp_no, 
em.last_name, 
em.first_name, 
dp.dept_name
FROM employees as em
INNER JOIN dept_manager as dm
ON dm.emp_no = em.emp_no
INNER JOIN departments as dp
ON dp.dept_id = dm.dept_id
WHERE (dm.dept_id = 'd007') 
OR 
(dm.dept_id = 'd005');

--(8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT
count(last_name),
last_name
FROM employees
GROUP BY last_name 
ORDER BY count(last_name) DESC




