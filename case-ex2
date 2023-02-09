  /*
    Extract a dataset containing the following information about the managers:
    employee number, first name, and last name. Add two columns at the end
    – one showing the difference between the maximum and minimum salary of that
    employee, and another one saying whether this salary raise was higher
    than $30,000 or NOT.

If possible, provide more than one solution.
    */
    
select e.emp_no, e.first_name, e.last_name, e.gender,  
max(s.salary)-min(s.salary) as dif_salary,
case 
when max(s.salary)-min(s.salary)>30000 then 'salary is higher than 30000' else 'less than 30000'
end info_sal
from employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN salaries s on s.emp_no = e.emp_no
group by s.emp_no
order by info_sal desc
;
  
