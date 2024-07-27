-- Active: 1720628377068@@127.0.0.1@5432@ph
--  CREATE A TABLE ** 
CREATE TABLE facebook(
  id SERIAL PRIMARY KEY, 
  first_name  VARCHAR(30) NOT NULL, 
  last_name VARCHAR(30) NOT NULL,
  email VARCHAR(50) NOT NULL
)

--  INSERT TABLE ** 
INSERT INTO facebook(first_name, last_name, email) VALUES('Mostafizur', 'Rahaman', 'rahaman@gmail.com'), ('Manik', 'Hossain', 'manik@gmail.com'), ('hridoy', 'hossain', 'hridoy@gmail.com')

-- ADD COLUMN IN TABLE ** 

ALTER TABLE facebook 
 ADD COLUMN age INT DEFAULT 20 NOT NULL CHECK(age >= 20);
ALTER TABLE facebook 
 ADD COLUMN phone VARCHAR(30) ;
 

--   See all data from table ** 
SELECT * FROM facebook;


--  RENAME COLUMN ** 
ALTER TABLE facebook
  RENAME COLUMN age To fb_age;




--  DROP COLUMN 

ALTER TABLE facebook  
    DROP COLUMN phone; 

--  UPDATE TYPE OF A COLUMN ** 
ALTER TABLE facebook
    ALTER COLUMN email TYPE VARCHAR(100);

--  ADD CONSTRAINT ** 
ALTER TABLE facebook 
  ALTER COLUMN phone  set DEFAULT '01951976238'; 

--  DROP CONSTRAINT 
ALTER TABLE facebook 
      ALTER COLUMN phone DROP NOT NULL; 


ALTER TABLE facebook
    ADD CONSTRAINT unique_facebook_email UNIQUE(email);

ALTER TABLE facebook 
      DROP CONSTRAINT unique_facebook_email;