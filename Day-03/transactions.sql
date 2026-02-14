-- Disable autocommit
SET autocommit = 0;

-- Example delete inside transaction
DELETE FROM users
WHERE id = 5;

-- Rollback changes
ROLLBACK;

-- Enable autocommit again
SET autocommit = 1;
