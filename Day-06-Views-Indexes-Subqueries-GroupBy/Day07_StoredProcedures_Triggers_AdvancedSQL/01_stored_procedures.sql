-- Change delimiter
DELIMITER $$

-- Create Stored Procedure
CREATE PROCEDURE AddUser(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male', 'Female', 'Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$

DELIMITER ;

-- Call Procedure
CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- View Procedures
SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- Drop Procedure
DROP PROCEDURE IF EXISTS AddUser;
