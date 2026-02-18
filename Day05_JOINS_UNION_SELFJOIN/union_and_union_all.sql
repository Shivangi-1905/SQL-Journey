-- Admin Users Table
CREATE TABLE admin_users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary INT
);

INSERT INTO admin_users VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000);

-- UNION
SELECT name FROM users
UNION
SELECT name FROM admin_users;

-- UNION ALL
SELECT name FROM users
UNION ALL
SELECT name FROM admin_users;

-- Multiple columns
SELECT name, salary FROM users
UNION
SELECT name, salary FROM admin_users;

-- Adding role label
SELECT name, 'User' AS role FROM users
UNION
SELECT name, 'Admin' AS role FROM admin_users;

-- Order by
SELECT name FROM users
UNION
SELECT name FROM admin_users
ORDER BY name;
