-- Length of name
SELECT name, LENGTH(name) AS name_length
FROM users;

-- Convert name to lowercase
SELECT id, gender, name,
       LOWER(name) AS lowercase_name,
       LENGTH(name) AS name_length
FROM users;

-- Create username using CONCAT
SELECT id, gender, name,
       CONCAT(LOWER(name), '19115') AS username,
       LENGTH(name) AS name_length
FROM users;
