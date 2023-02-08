/*
Similar to the exercises done in the lecture,  obtain a result set  containing the
 employee number,  first name, and last name of all employees
 with a number higher than 109990.
 Create a fourth column in the query, indicating whether this employee is also a manager,
 according to the data provided in the dept_manager table, or a regular employee. 
*/

select count(emp_no)
 from dept_manager dm where emp_no> 109990 ;
 
select e.emp_no, e.first_name, e.last_name, 
CASE 
when dm.emp_no IS NOT NULL THEN 'manager'
ELSE 'regular employee'
END e_type
from employees e
LEFT JOIN dept_manager dm ON dm.emp_no=e.emp_no
where e.emp_no>109990 
order by e_type;
