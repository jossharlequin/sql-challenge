# sql-challenge

Quickdatabases SQL code-
To run the code in postgre I omitted the: 
ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dempt_manager" ADD CONSTRAINT "fk_dempt_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dempt_manager" ADD CONSTRAINT "fk_dempt_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_emp" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_emp" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_title_id" FOREIGN KEY("title_id")
REFERENCES "employees" ("emp_title_id");

Because I got errors that I couldn't figure out how to fix so I just removed that part of the code and then uploaded the csv files into the tables.

Data Analysis (20 points)
List the employee number, last name, first name, sex, and salary of each employee (2 points)
-I joined two tables on the Emp_no
List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
-This was all on the employees table, then I did a where clause to filter it to just 1986
List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
-For this I had to figure out how to list the manager of each department without just repeating the other columns later. I decided to make a new column called "Dept_Manager" with concatonated 
 data.https://www.w3schools.com/sql/func_sqlserver_concat.asp
List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
-I joined 3 tables: dept_emp, departments, and employees. The first two were joined with Dept_no, the latter two with Emp_no.
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
-This was all on the employees table, then I did a where clause to filter it to just 'Hercules' and 'B%'.
List each employee in the Sales department, including their employee number, last name, and first name (2 points)
-I joined 3 tables: departments, dept_emp, and employees. The first two were joined with Dept_no, the latter two with Emp_no. Then I did a where clause to filter on 'Sales'.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
-I joined 3 tables: departments, dept_emp, and employees. The first two were joined with Dept_no, the latter two with Emp_no. Then I did a where clause to filter on 'Sales' and (which is 'or') 'Devolopment'.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
-This was all in the employees table. I did a count of the Last_name, made it its own column, then I had that column descend in value counts.


