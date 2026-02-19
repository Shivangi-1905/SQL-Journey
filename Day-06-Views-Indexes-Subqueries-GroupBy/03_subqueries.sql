-- Scalar subquery
SELECT id, name, salary
FROM users
WHERE salary > (
    SELECT AVG(salary) FROM users
);

-- Subquery with IN
SELECT id, name, referred_by_id
FROM users
WHERE referred_by_id IN (
    SELECT id FROM users WHERE salary > 75000
);

-- Subquery in SELECT
SELECT name, salary,
(SELECT AVG(salary) FROM users) AS average_salary
FROM users;
