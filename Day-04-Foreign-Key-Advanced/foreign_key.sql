-- Day 03: Understanding Foreign Key in SQL
-- Topic: Foreign Key with ON DELETE CASCADE

USE startersql;

-- Drop table if exists to avoid duplicate error
DROP TABLE IF EXISTS addresses;

-- Create addresses table with foreign key reference to users table
CREATE TABLE addresses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    
    -- Foreign key constraint
    CONSTRAINT fk_user 
    FOREIGN KEY (user_id) 
    REFERENCES users(id) 
    ON DELETE CASCADE
);
