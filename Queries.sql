-- Data Analysis and Queries

--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
left JOIN "Salaries" as s
on e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM "Employees"
WHERE hire_date between '1/1/1986' and '12/31/1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM "Departments" as d
left JOIN "Dept_manager" as m
on d.dept_no = m.dept_no
left JOIN "Employees" as e
on m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_emp" as de
left JOIN "Departments" as d
on de.dept_no = d.dept_no
left JOIN "Employees" as e
on de.emp_no = e.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM "Employees" as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM "Employees" as e
left JOIN "Dept_emp" as de on 
e.emp_no = de.emp_no
left JOIN "Departments" as d on 
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM "Employees" as e
left JOIN "Dept_emp" as de on 
e.emp_no = de.emp_no
left JOIN "Departments" as d on 
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*)
AS "Frequency_of_last_names"
FROM "Employees"
GROUP BY last_name
ORDER BY "Frequency_of_last_names" desc;



