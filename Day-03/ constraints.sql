USE startersql;

-- Add UNIQUE constraint on email
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

-- Add CHECK constraint on date_of_birth
ALTER TABLE users
ADD CONSTRAINT chk_dob
CHECK (date_of_birth > '1920-07-07');



