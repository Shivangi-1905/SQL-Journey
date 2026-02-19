-- Creating a view
CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

-- Querying the view
SELECT * FROM high_salary_users;

-- Updating base table
UPDATE users
SET salary = 72000
WHERE name = 'Raj';

-- View reflects updated data automatically
SELECT * FROM high_salary_users;

-- Dropping view
DROP VIEW high_salary_users;
