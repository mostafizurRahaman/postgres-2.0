
-- * When we can use trigger 
-- ! Table level Triggers ** 
--* 1. INSERT 2. UPDATE 3. DELETE 4. CREATE 
--  ! Database Level Triggers ** 
-- * 1. Database Startup 2. Database Shutdown 3. Database Connection Start 4. Database Connection End 




-- ! Trigger Syntax 
--*  CREATE TRIGGER trigger_name 
--* { BEFORE | AFTER | INSTEAD OF} {CREATE  | INSERT  | UPDATE  | DELETE }
--* ON TableName
-- * Execute FUNCTION function_Name()



CREATE TABLE my_users(
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(30) NOT NULL,
  lastName VARCHAR(50) NOT NULL
)


INSERT INTO my_users(firstName, lastName) VALUES('roman', 'hossain'), ('ratul', 'hossain'), ('arif', 'hossain'), ('fahad', 'hossain')



CREATE TABLE deleted_user_audit(
  firstName VARCHAR(30) NOT NULL, 
  lastName VARCHAR(50) NOT NULL,
  deleted_at TIMESTAMP NOT NULL
)


CREATE FUNCTION save_deleted_user()
RETURNS TRIGGER
LANGUAGE plpgSQL
AS
$$
  BEGIN
      INSERT INTO deleted_user_audit(firstName, lastName, deleted_at) VALUES(
          OLD.firstName,
          OLD.lastName,
         now()
        );
        RAISE NOTICE 'DELETED AUDIT LOG CREATED!!!!';
        RETURN OLD;
  END
$$


DROP FUNCTION save_deleted_user


CREATE TRIGGER save_deleted_user_trigger
AFTER DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_deleted_user();



DELETE FROM my_users
    WHERE id = 1;


SELECT * FROM my_users;
SELECT * FROM deleted_user_audit;


DROP TRIGGER save_deleted_user_trigger ON my_users;



TRUNCATE TABLE my_users;