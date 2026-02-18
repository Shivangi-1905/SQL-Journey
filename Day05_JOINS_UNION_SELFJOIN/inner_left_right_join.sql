-- INNER JOIN
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses
ON users.id = addresses.user_id;

-- LEFT JOIN
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses
ON users.id = addresses.user_id;

-- RIGHT JOIN
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses
ON users.id = addresses.user_id;
