-- TODO:  CREATE A FUNCTION  *** 
CREATE FUNCTION avg_salary()
RETURNS TABLE (
  department_name VARCHAR(50),
  Salary INT,
  "Total Employee" INT
)
LANGUAGE SQL
AS
$$
    SELECT department_name, avg(salary) as "Salary", count(*) as "Total Employee" FROM employees
        GROUP BY department_name    
$$



SElECT  avg_salary()



DROP FUNCTION avg_salary


SELECT avg_salary()


SELECT * FROM employees; 





-- TODO:   CREATE PARAMETER FUNCTION *** 
CREATE FUNCTION delete_emp(p_emp_id INTEGER)
RETURNS void
LANGUAGE SQL
AS
$$
  DELETE FROM employees
    WHERE employee_id = p_emp_id
  -- RAISE INFO 'Employee Deleted successfully!!!'
$$



SELECT delete_emp(30)

