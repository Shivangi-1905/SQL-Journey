-- Users Table
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Addresses Table
CREATE TABLE addresses (
    id INT PRIMARY KEY,
    user_id INT,
    city VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users VALUES
(1, 'Aarav'),
(2, 'Sneha'),
(3, 'Raj');

INSERT INTO addresses VALUES
(1, 1, 'Mumbai'),
(2, 2, 'Kolkata'),
(3, 4, 'Delhi');
