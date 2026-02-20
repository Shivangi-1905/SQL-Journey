-- Logical Operators
SELECT * FROM users
WHERE salary > 50000 AND gender = 'Male';

SELECT * FROM users
WHERE gender = 'Male' OR gender = 'Other';

SELECT * FROM users
WHERE NOT gender = 'Female';

-- Wildcards
SELECT * FROM users WHERE name LIKE 'A%';
SELECT * FROM users WHERE name LIKE '_a%';

-- LIMIT & OFFSET
SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

-- DISTINCT
SELECT DISTINCT gender FROM users;
