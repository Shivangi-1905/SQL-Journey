-- Day 01: SQL Basics

CREATE DATABASE CodeWithHarry;
USE CodeWithHarry;

CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) UNIQUE NOT NULL,
   gender ENUM('Male', 'Female', 'Other'),
   date_of_birth DATE,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;
SELECT id, email FROM users;
