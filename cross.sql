
--  CREATE DEPARTMENT TABLE  *** 



CREATE TABLE departments(
   dept_id SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL
)


CREATE TABLE employee(
  id SERIAL PRIMARY KEY, 
  "name" VARCHAR(40) NOT NULL,
  dept_id INTEGER REFERENCES departments(dept_id) ON DELETE SET NULL
)

DROP TABLE employee; 
DROP TABLE departments; 


INSERT INTO departments(dept_id,name) VALUES(101,'computer'),(102,'civil'),(103,'economics'); 
INSERT INTO employee(name,dept_id) VALUES('Mostafizur Rahaman',101),('Ratul Hossain',102)



SELECT * FROM departments; 
SELECT * FROM employee; 


SELECT * FROM employee
   CROSS JOIN departments; 



SELECT * FROM employee
   NATURAL JOIN departments; 



CREATE TABLE man(man_id SERIAL PRIMARY  KEY, "name" VARCHAR(20)); 
DROP TABLE man;



CREATE TABLE eproduct(id SERIAL PRIMARY KEY,p_name VARCHAR(50), user_id INTEGER REFERENCES euser(user_id) ON DELETE CASCADE);
DROP TABLE eproduct;
CREATE TABLE euser(user_id SERIAL PRIMARY KEY, username VARCHAR(30))

DROP TABLE euser;


INSERT INTO eproduct(
  p_name, user_id) VALUES(
    'mouse', 1
  ),(
    'mobile', 2
  );
INSERT INTO euser(
  username) VALUES(
    'Fahim'
  ) ,(
    'Ratul'
  )


SELECT * FROM eproduct;
SELECT * FROM euser; 


SELECT * FROM eproduct
    CROSS JOIN euser; 


SELECT * FROM eproduct
    NATURAL JOIN euser; 

