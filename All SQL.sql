#Code used from Quick
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dempt_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE "departments" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(255)   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(255)   NOT NULL,
    "emp_no" INT   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(255)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(255)   NOT NULL,
    "title" VARCHAR(255)   NOT NULL
);


#Import CSV
COPY dept_manager FROM '/data/dept_manager.csv' WITH CSV HEADER DELIMITER ',';
COPY departments FROM '/data/departments.csv' WITH CSV HEADER DELIMITER ',';
COPY dept_emp FROM '/data/dept_emp.csv' WITH CSV HEADER DELIMITER ',';
COPY employees FROM '/data/employees.csv' WITH CSV HEADER DELIMITER ',';
COPY salaries FROM '/data/salaries.csv' WITH CSV HEADER DELIMITER ',';
COPY titles FROM '/data/titles.csv' WITH CSV HEADER DELIMITER ',';


#List the employee number, last name, first name, sex, and salary of each employee (2 points)
Select A.Emp_no, A.Last_name, A.First_name, A.Sex, B.Salary
from employees as A
join salaries as B
on A.Emp_no=B.Emp_no


#List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
Select First_name, Last_name, Hire_Date
from employees
where Hire_date > '12/31/1985' and Hire_date < '1/1/1987'


#List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
Select CONCAT(C.First_name, ' ', C.Last_name) AS Dept_Manager, A.Dept_no, B.Dept_Name, A.Emp_no, C.Last_name, C.First_name
from dept_manager as A
join departments as B
on A.Dept_no=B.Dept_no
join employees as C
on A.Emp_no=C.Emp_no


#List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
Select A.Dept_no, A.Emp_no, C.Last_name, C.First_name, B.Dept_Name
from dept_emp as A
join departments as B
on A.Dept_no=B.Dept_no
join employees as C
on A.Emp_no=C.Emp_no


#List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
Select First_name, Last_name, Sex
from employees
where First_name='Hercules' and Last_name like 'B%'


#List each employee in the Sales department, including their employee number, last name, and first name (2 points)
Select A.Dept_name, B.Emp_no, C.Last_name, C.First_name
from departments as A
join dept_emp as B
on A.Dept_no=B.Dept_no
join employees as C
on B.Emp_no=C.Emp_no
where A.Dept_name='Sales'


#List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
Select A.Dept_name, B.Emp_no, C.Last_name, C.First_name
from departments as A
join dept_emp as B
on A.Dept_no=B.Dept_no
join employees as C
on B.Emp_no=C.Emp_no
where A.Dept_name='Sales' or A.Dept_name='Development'
Order By A.Dept_name Asc


#List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
select Last_name, count(Last_name) as Last_name_Counts
from employees
Group by Last_name
Order by Last_name_Counts Desc