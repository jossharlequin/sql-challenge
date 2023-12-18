COPY dept_manager FROM '/data/dept_manager.csv' WITH CSV HEADER DELIMITER ',';
COPY departments FROM '/data/departments.csv' WITH CSV HEADER DELIMITER ',';
COPY dept_emp FROM '/data/dept_emp.csv' WITH CSV HEADER DELIMITER ',';
COPY employees FROM '/data/employees.csv' WITH CSV HEADER DELIMITER ',';
COPY salaries FROM '/data/salaries.csv' WITH CSV HEADER DELIMITER ',';
COPY titles FROM '/data/titles.csv' WITH CSV HEADER DELIMITER ',';