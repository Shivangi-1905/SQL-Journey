SELECT salary,
       ROUND(salary) AS rounded_salary,
       FLOOR(salary) AS floored_salary,
       CEIL(salary) AS ceiled_salary
FROM users;
