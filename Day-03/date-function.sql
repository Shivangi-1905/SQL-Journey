-- Current date and time
SELECT NOW();

-- Extract birth year
SELECT name,
       YEAR(date_of_birth) AS birth_year
FROM users;

-- Calculate days lived
SELECT name,
       DATEDIFF(CURDATE(), date_of_birth) AS days_lived
FROM users;
