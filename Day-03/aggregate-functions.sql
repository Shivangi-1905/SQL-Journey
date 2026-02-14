-- Count total users
SELECT COUNT(*) FROM users;

-- Count female users
SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- Minimum and Maximum salary
SELECT MIN(salary) AS min_salary,
       MAX(salary) AS max_salary
FROM users;

-- Total salary
SELECT SUM(salary) AS total_salary FROM users;

-- Average salary
SELECT AVG(salary) AS avg_salary FROM users;

-- Average salary by gender
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

-- Total salary by gender
SELECT gender, SUM(salary) AS total_salary
FROM users
GROUP BY gender;
