
CREATE TABLE students( 
   id SERIAL PRIMARY KEY,
   first_name VARCHAR(20) NOT NULL UNIQUE,
   last_name VARCHAR(20) NOT NULL, 
   age INT, 
   GRADE CHAR(2), 
   course VARCHAR(50), 
   email VARCHAR(100),
   dob DATE,
   blood_group VARCHAR(5),
   country VARCHAR(50)
)

DROP TABLE students

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');


SELECT * FROM students;


SELECT  email FROM students;


SELECT email, age FROM students; 

SELECT email as StudentEmail FROM students; 


SELECT age Students FROM students; 


SELECT * FROM students ORDER BY age ASC;


SELECT * FROM students ORDER BY  email DESC;

SELECT * FROM students ORDER BY age  ASC OFFSET  5 LIMIT 5; 

SELECT * FROM students ORDER BY id ASC OFFSET 10 LIMIT 10; 


SELECT DISTINCT(country) from students ORDER BY country ASC; 

SELECT DISTINCT(age) FROM students ORDER BY age ASC; 


SELECT DISTINCT(blood_group) FROM students ORDER BY blood_group ASC;



SELECT * FROM students 
  WHERE country = 'USA'


SELECT * FROM students 
   WHERE grade = 'A' AND course = 'Physics'; 


SELECT * FROM students
 WHERE blood_group = 'A+';


 SELECT * FROM students 
  WHERE (country = 'USA' OR country = 'Australia' )AND age = 20
  ORDER BY country ASC



SELECT * FROM students 
  WHERE age > 20; 



SELECT * FROM students  
 WHERE age > 20 AND course = 'History'


 SELECT * FROM students 
   WHERE age >= 20; 


SELECT * FROM students
   WHERE age < 20; 
SELECT * FROM students
   WHERE age <= 20; 


SELECT * FROM students
   WHERE age !=20
   ORDER BY age ASC; 


SELECT * FROM students
   WHERE age <>20
   ORDER BY age ASC; 


SELECT 12 % 5 



--  SELECT * PRACTICE AGAIN

SELECT * FROM students; 


--  SELECT only email : 
SELECT email FROM students;

--  SELECT only age : 

SELECT age FROM students;


--  as Method: 
SELECT email as "Email Address", age as student_age FROM students; 


--  SELECT Distinct VALUES FOR COUNTRY ** 

SELECT DISTINCT(country) FROM students; 

--  SELECT DISTINCT VALUES FOR AGE ** 
SELECT DISTINCT(age) FROM students; ADD


--  SELECT DISTINCT VALUE FOR  gender ** 
SELECT DISTINCT(blood_group) FROM students;


-- ORDER BY **  -> age In Ascending Order * 
 -- -> There are two type of order -> 1. ASC 2. DESC 
SELECT * FROM students ORDER BY age ASC; 

--  Now for descending order ** 
SELECT * FROM students ORDER BY age DESC; 

--  LIMIT && OFFSET **  OFFSET for skipping and Limit for Limiting 
--  --> SKIP First 5 Data and Get Next 10 data ** 
SELECT * FROM students OFFSET 5 LIMIT 10


--  Where clause for filtering With Logical and Conditional Operation ** 

--   SELECT ALL STUDENT OF 'USA'
SELECT * FROM students 
   WHERE country = 'USA';

--  SELECT ALL  STUDENTS WHERE BLOOD GROUP are 'A+'; 

SELECT * FROM students
      WHERE blood_group = 'A+'

--  SELECT ALL STUDENT WHERE grade "A" and course "physics" 
SELECT * FROM students
   WHERE course = 'Physics' AND grade = 'A';

--  SELECT ALL STUDENTS OF USA AND AUSTRALIA

SELECT * FROM students
      WHERE country = 'USA' OR COUNTRY = 'AUSTRALIA' 

--  SELECT ALL STUDENTS WHICH AGE IS NOT EQUAL 20 
SELECT * FROM students
   WHERE age != 20; 
SELECT * FROM students
      WHERE age <> 20; 

SELECT * FROM students
    WHERE age >= 20; 

SELECT *  FROM students 
    WHERE age <= 19; 

SELECT min(length(country)), max(length(country)), country FROM students 
   GROUP BY country
   ORDER BY country ASC
   LIMIT 2


SELECT CITY, length(CITY) FROM STATION ORDER BY length(CITY), CITY LIMIT 1; 
SELECT CITY, length(CITY) FROM STATION ORDER BY length(CITY) DESC, CITY LIMIT 1;


-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.

SELECT DISTINCT(CITY) FROM STATION 
      WHERE  substr(CITY,1,1) IN ('A', 'E', 'I', 'O', 'U') AND substr(CITY,-1,1) IN ('a', 'e', 'i', 'o', 'u');


SELECT DISTINCT(CITY) FROM STATION WHERE CITY LIKE 'A%a' OR CITY LIKE 'A%e' OR CITY LIKE 'A%i' OR CITY LIKE 'A%o' OR CITY LIKE 'A%u'  OR CITY LIKE 'E%a' OR CITY LIKE 'E%e' OR CITY LIKE 'E%i' OR CITY LIKE 'E%o' OR CITY LIKE 'E%u' OR CITY LIKE 'I%a' OR CITY LIKE 'I%e' OR CITY LIKE 'I%i' OR CITY LIKE 'I%o' OR CITY LIKE 'I%u' OR CITY LIKE 'O%a' OR CITY LIKE 'O%e' OR CITY LIKE 'O%i' OR CITY LIKE 'O%o' OR CITY LIKE 'O%u'  OR CITY LIKE 'U%a'OR CITY LIKE 'U%e' OR CITY LIKE 'U%i' OR  CITY LIKE 'U%o'  OR CITY LIKE 'U%u'; 


SELECT DISTINCT(CITY) FROM STATION WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');


-- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE NOT (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

SELECT DISTINCT(country) FROM students WHERE NOT country LIKE 'A%'


-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT(CITY) FROM STATION WHERE NOT (CITY LIKE 'A%a' OR CITY LIKE 'A%e' OR CITY LIKE 'A%i' OR CITY LIKE 'A%o' OR CITY LIKE 'A%u'  OR CITY LIKE 'E%a' OR CITY LIKE 'E%e' OR CITY LIKE 'E%i' OR CITY LIKE 'E%o' OR CITY LIKE 'E%u' OR CITY LIKE 'I%a' OR CITY LIKE 'I%e' OR CITY LIKE 'I%i' OR CITY LIKE 'I%o' OR CITY LIKE 'I%u' OR CITY LIKE 'O%a' OR CITY LIKE 'O%e' OR CITY LIKE 'O%i' OR CITY LIKE 'O%o' OR CITY LIKE 'O%u'  OR CITY LIKE 'U%a'OR CITY LIKE 'U%e' OR CITY LIKE 'U%i' OR  CITY LIKE 'U%o'  OR CITY LIKE 'U%u'); 


-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicate
SELECT DISTINCT(CITY) FROM STATION WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%' OR CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');


--  There are two type of function in SQL. 
--  --> Aggregation Function 
-- --> Scalar Function 

--  