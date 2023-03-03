-- query steps

-- combine all data
-- -> FROM
-- -> -> a table
-- -> -> (optional) join more data

-- filter your data
-- -> WHERE

-- group data for aggregation (count, sum, average, etc)
-- -> GROUP BY

-- order your data
-- -> ORDER BY

-- choose columns to grab
-- -> SELECT


--List the employee number, last name, first name, 
--sex, and salary of each employee (2 points)
select 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees e
inner join salaries s on e.emp_no = s.emp_no


-- List the first name, last name, 
-- and hire date for the employees who were hired in 1986 (2 points)


select 
	first_name,
	last_name,
	hire_date
	
from employees 
where right(hire_date,4) = '1986'

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name (2 points)

select
	dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name

from dept_manager dm
inner join departments d on dm.dept_no = d.dept_no
inner join employees e on dm.emp_no = e.emp_no


--List the department number for each employee along with that employee’s
--employee number,last name, first name, and department name (2 points)

select
	de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name

from employees e
inner join dept_emp de on e.emp_no = de.emp_no
inner join departments d on de.dept_no = d.dept_no

--List first name, last name, and sex of each employee whose first name is
--Hercules and whose last name begins with the letter B (2 points)


select
	first_name,
	last_name,
	sex
from employees
where 
	first_name = 'Hercules' 
	and last_name like 'B%'

--List each employee in the Sales department, including their employee
--number, last name, and first name (2 points)

select
	de.emp_no,
	e.last_name,
	e.first_name

from dept_emp de
inner join employees e on de.emp_no = e.emp_no
inner join departments d on de.dept_no = d.dept_no

where d.dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their
--employee number, last name, first name, and department name (4 points)

select
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name

from dept_emp de
inner join employees e on de.emp_no = e.emp_no
inner join departments d on de.dept_no = d.dept_no

where d.dept_name in ('Sales', 'Development')


--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name) (4 points)
select
	last_name,
	count(*) as frequency
	
from employees
group by last_name
order by frequency desc








