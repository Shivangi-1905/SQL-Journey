-- Show indexes
SHOW INDEXES FROM users;

-- Single column index
CREATE INDEX idx_email ON users(email);

-- Query using indexed column
SELECT * FROM users WHERE email = 'example@example.com';

-- Multi-column index
CREATE INDEX idx_gender_salary ON users(gender, salary);

-- Query using multi-column index
SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;

-- Drop index
DROP INDEX idx_email ON users;
