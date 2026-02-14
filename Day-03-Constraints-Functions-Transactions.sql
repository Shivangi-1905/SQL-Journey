
-- Day 3: Constraints


ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE users
ADD CONSTRAINT chk_dob
CHECK (date_of_birth > '1920-07-07');



-- Aggregate Functions


SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'Female';

SELECT MIN(salary) AS min_salary,
       MAX(salary) AS max_salary
FROM users;

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;



-- String Functions


SELECT name, LENGTH(name) AS name_length FROM users;

SELECT id, name,
       CONCAT(LOWER(name), '19115') AS username
FROM users;



-- Transactions


SET autocommit = 0;

DELETE FROM users WHERE id = 5;

ROLLBACK;

SET autocommit = 1;
