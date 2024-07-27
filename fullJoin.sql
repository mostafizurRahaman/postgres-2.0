-- Active: 1720628377068@@127.0.0.1@5432@ph


SELECT * FROM students;


--  SELECT * FROM STUDENT **

--  INNER JOIN ** 
SELECT * FROM product

SELECT * FROM "user";

SELECT * FROM "user" as u 
  INNER JOIN product as p on u.id = p.user_id;

SELECT * FROM product as p
    LEFT  JOIN "user" as u ON  p.user_id = u.id

SELECT * FROM  "user" as u
   RIGHT JOIN  product as p ON u.id = p.user_id;

SELECT * FROM "user" as u 
 FULL JOIN product as p ON p.user_id = u.id;
SELECT * FROM "product" as p 
 FULL JOIN "user" as u ON p.user_id = u.id;


SELECT * FROM "product" as p 
 CROSS JOIN "user" as u; 


SELECT * FROM product as p
  NATURAL JOIN "user"; 

