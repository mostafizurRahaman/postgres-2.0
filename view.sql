--  CREATE A VIEW ** 
CREATE VIEW department_salary_avg
AS
SELECT avg(salary) FROM employees;


SELECT * FROM department_salary_avg;



--  CREATE A NEW VIEW *** 
CREATE VIEW department_based_avg
  AS
  SELECT department_name, avg(salary), count(*) FROM employees
      GROUP BY department_name
         HAVING department_name <> 'HR'; 


SELECT * FROM department_based_avg;