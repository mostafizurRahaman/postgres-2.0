CREATE PROCEDURE see_emp()
LANGUAGE plpgSQL
AS
$$
  BEGIN
    DELETE FROM employees
        WHERE employee_id = 29;
  END
$$




CREATE PROCEDURE remove_emp(p_emp_id INT) 
LANGUAGE plpgSQL
AS
$$
  DECLARE
    test_id INT;
  BEGIN
    SELECT employee_id INTO test_id FROM employees WHERE employee_id = p_emp_id;
      DELETE FROM employees
        WHERE employee_id = test_id;

    RAISE NOTICE 'Employee deleted successfully!!!';
  END
$$

DROP PROCEDURE remove_emp;
CALL see_emp();


call remove_emp(28);
SELECT * FROM employees; 