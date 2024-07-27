
SHOW timezone;


SELECT CURRENT_DATE; 
SELECT current_timestamp; 
SELECT current_time;
SELECT now();

SELECT to_char('2002-02-02'::date,'DAY MONTH YYYYYY')

SELECT extract(YEAR FROM now());


SELECT age('2002-04-07', now())



SELECT now() - INTERVAL '2  YEARS 5 MONTH'



CREATE TABLE timeZ(
  ts TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  tsZ TIMESTAMP WITH TIME ZONE NOT NULL
)


SELECT now()::date;
SELECT now()::time;  

SELECT 'y'::boolean; 
SELECT 'n'::boolean; 
SELECT 'yes'::boolean;
SELECT 'no'::boolean;
SELECT 't'::boolean;
SELECT 'f'::boolean;



SELECT  extract(year from dob) as birth_year, count(id)  FROM students
   GROUP BY birth_year; 


SELECT country, count(id) 
  FROM students
    GROUP BY country
      HAVING count(id) > 1; 


SELECT   country, count(*) FROM students 
  GROUP BY country
   HAVING country != 'USA'; 
 