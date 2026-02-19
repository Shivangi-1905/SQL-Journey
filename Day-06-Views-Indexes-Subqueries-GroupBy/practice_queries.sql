-- Find highest salary user
SELECT name, salary
FROM users
WHERE salary = (SELECT MAX(salary) FROM users);

-- Count users earning above average salary
SELECT COUNT(*)
FROM users
WHERE salary > (SELECT AVG(salary) FROM users);

-- Gender-wise maximum salary
SELECT gender, MAX(salary)
FROM users
GROUP BY gender;
