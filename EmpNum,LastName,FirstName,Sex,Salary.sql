Select A.Emp_no, A.Last_name, A.First_name, A.Sex, B.Salary
from employees as A
join salaries as B
on A.Emp_no=B.Emp_no