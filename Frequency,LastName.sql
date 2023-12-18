select Last_name, count(Last_name) as Last_name_Counts
from employees
Group by Last_name
Order by Last_name_Counts Desc