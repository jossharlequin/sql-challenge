Select A.Dept_no, A.Emp_no, C.Last_name, C.First_name, B.Dept_Name
from dept_emp as A
join departments as B
on A.Dept_no=B.Dept_no
join employees as C
on A.Emp_no=C.Emp_no