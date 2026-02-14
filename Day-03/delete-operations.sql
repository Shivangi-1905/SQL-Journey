-- Delete one row
DELETE FROM users
WHERE id = 3;

-- Delete multiple rows
DELETE FROM users
WHERE gender = 'Other';

-- Delete rows with salary less than 50000
DELETE FROM users
WHERE salary < 50000;

-- Delete rows where salary is NULL
DELETE FROM users
WHERE salary IS NULL;
