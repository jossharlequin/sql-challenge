# sql-challenge

Titles in quickdatabases
  I got an error when running the code I originally created from quickdatabases for the 
  Titles Table:

Columns: title_id (INT), title (VARCHAR)
Primary Key: title_id
Foreign Key: title_id references employees(emp_title_id)

I knew in sql I could join title_id to emp_title_id but I got an error when running the code of:
ERROR:  there is no unique constraint matching given keys for referenced table "employees" 

SQL state: 42830
I couldn't figure out how to fix it, so I just got rid of it.
