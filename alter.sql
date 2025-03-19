-- Active: 1741862659758@@127.0.0.1@5432@my_info
-- create  table about_me  (
--     id SERIAL UNIQUE NOT NULL,
--     name VARCHAR(20)  NOT NULL,
--     age INTEGER NOT NULL CHECK (age >=15),
--     PRIMARY KEY (id, name)
-- )



-- ALTER TABLE about_me ADD COLUMN age INTEGER CHECK(age >=15)
-- insert INTO about_me (id, name, age) VALUES(1,'Masum Rana', 25)

-- SELECT * FROM about_me;

-- ALTER TABLE about_me ADD COLUMN email VARCHAR(255) CHECK(email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')

-- UPDATE about_me set email='masum.rana@gmail.com' WHERE id=1;

-- 
-- rename about_me table columan age to user_age
ALTER TABLE about_me RENAME COLUMN age To "user_age"

-- Rename table name about_ to myself
ALTER Table about_me RENAME to "myself"


--  change column  value type
 ALTER TABLE myself 
ALTER COLUMN name TYPE VARCHAR(50);


ALTER TABLE myself
add constraint UNIQUE_email UNIQUE (email)

alter table myself add constraint  pk_myself PRIMARY KEY(id)
  


TRUNCATE Table myself

DROP DATABASE my_info
-- show all about me myself table
-- SELECT * from myself;