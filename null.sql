SELECT NULL = 1; 
--  Result = NULL


SELECT NULL = NULL; 
-- Result = NULL; 

SELECT NULL < NULL;
--  Result = NULL 


SELECT COALESCE(email, 'Email not Provided') as "Email" FROM students;


SELECT email FROM students
    WHERE email IS NULL; 


SELECT email from students 
    WHERE email IS NOT NULL;


SELECT country FROM students
    WHERE NOT(country = 'USA' OR country = 'UK')

SELECT  country from students
  WHERE country NOT IN ('USA', 'UK')


--  BETWEEN 
SELECT * FROM students
    WHERE age  BETWEEN 20 and 21; 


--  NOT BETWEEN 
SELECT * FROM students
    WHERE age  NOT BETWEEN 20 and 21; 




--  LIKE 
SELECT * FROM students
  WHERE email ILIKE ('a%')

SELECT * FROM students  WHERE email ILIKE ('_a%')



DELETE FROM students
    WHERE id = 19;


UPDATE students
    set email = 'default@gamil.com' , age = 20
      WHERE email IS NULL; 


SELECT * FROM students;



