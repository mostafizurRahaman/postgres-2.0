

--  CREATE USER TABLE ** 
CREATE TABLE  "user" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL
)



CREATE TABLE product(
  id SERIAL PRIMARY KEY, 
  title TEXT NOT NULL, 
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
)

-- INSERT DATA INTO USER: 

INSERT INTO "user"(username) VALUES('akash'),('batash'),('sagor'),('nodi'); 


INSERT INTO product (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


SELECT * FROM "user";

SELECT * FROM product;



ALTER TABLE product
  ALTER COLUMN user_id set NOT NULL;


DROP TABLE "user"; 
DROP TABLE product;


-- ON DELETE RESTRICT OR ON DELETE NO ACTIONS 
-- ON DELETE CASCADE 
-- ON DELETE SET NULL 
-- ON DELETE SET DEFAULT



DELETE FROM "user"
    WHERE id = 4; 



SELECT * FROM product 
    INNER JOIN "user" on product.user_id = "user".id;


SELECT * FROM "user" as u
    FULL JOIN product as p on u.id = p.user_id;