-- Add referral column
ALTER TABLE users
ADD COLUMN referred_by_id INT;

-- Sample referral updates
UPDATE users SET referred_by_id = 1 WHERE id IN (2,3);
UPDATE users SET referred_by_id = 2 WHERE id = 4;

-- Self Join
SELECT 
  a.id,
  a.name AS user_name,
  b.name AS referred_by
FROM users a
LEFT JOIN users b
ON a.referred_by_id = b.id;
