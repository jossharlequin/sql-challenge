Select A.Dept_name, B.Emp_no, C.Last_name, C.First_name
from departments as A
join dept_emp as B
on A.Dept_no=B.Dept_no
join employees as C
on B.Emp_no=C.Emp_no
where A.Dept_name='Sales'