SET SQL_SAFE_UPDATES = 0;

UPDATE users SET salary = 45000 WHERE id = 1;
UPDATE users SET salary = 70000 WHERE id = 5;
UPDATE users SET salary = salary + 10000 WHERE salary < 60000;
