Select CONCAT(C.First_name, ' ', C.Last_name) AS Dept_Manager, A.Dept_no, B.Dept_Name, A.Emp_no, C.Last_name, C.First_name
from dept_manager as A
join departments as B
on A.Dept_no=B.Dept_no
join employees as C
on A.Emp_no=C.Emp_no