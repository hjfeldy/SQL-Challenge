-- Question 1
SELECT employees.emp_no, last_name, first_name, sex, salaries.salary FROM
employees JOIN salaries ON (employees.emp_no = salaries.emp_no);

-- Question 2
SELECT first_name, last_name, hire_date FROM employees 
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986'

-- Question 3
SELECT dep.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name 
	FROM departments AS dep 
	JOIN dept_manager as man ON dep.dept_no = man.dept_no
		JOIN employees AS emp on man.emp_no = emp.emp_no

-- Question 4
SELECT emp.emp_no, last_name, first_name, dept_name 
	FROM employees as emp JOIN dept_emp as dep
	ON  emp.emp_no = dep.emp_no
		JOIN departments ON dep.dept_no = departments.dept_no

-- Question 5
SELECT first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- Question 6
SELECT emp.emp_no, last_name, first_name, dep.dept_name 
	FROM employees AS emp JOIN dept_emp as demp
	ON emp.emp_no = demp.emp_no
		JOIN departments as dep ON demp.dept_no = dep.dept_no
WHERE dept_name = 'Sales'

-- Question 7
SELECT emp.emp_no, last_name, first_name, dep.dept_name 
	FROM employees AS emp JOIN dept_emp as demp
	ON emp.emp_no = demp.emp_no
		JOIN departments as dep ON demp.dept_no = dep.dept_no
WHERE dept_name IN ('Sales', 'Development')
ORDER BY dept_name

-- Question 8
SELECT last_name, count(last_name) as Freq FROM employees
GROUP BY last_name
ORDER BY Freq DESC 
