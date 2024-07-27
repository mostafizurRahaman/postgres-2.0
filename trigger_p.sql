

 CREATE TABLE user_created_log(
  firstName VARCHAR(30),
  created_at TIMESTAMP
 )

 DROP TABLE user_created_log;


CREATE FUNCTION save_insert_log()
RETURNS TRIGGER
LANGUAGE plpgSQL
AS
$$
  BEGIN
      INSERT INTO user_created_log(firstName, created_at) VALUES(
      OLD.firstName,
        now()
      );
      RAISE NOTICE 'User Inserted Successfully !!!';
      RETURN OLD;
  END
$$


CREATE TRIGGER insert_log_users
AFTER INSERT
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_insert_log(); 

DROP TRIGGER insert_log_users ON my_users;
DROP FUNCTION save_insert_log;
DROP TABLE my_users;

INSERT INTO my_users(firstName, lastName) VALUES('Mostafizur', 'Rahaman')

SELECT * FROM my_users; 
SELECT * FROM user_created_log;