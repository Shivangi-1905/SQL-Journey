# Day 03 - Foreign Key in SQL

## 📌 What I Learned
- What is a Foreign Key
- How to reference a parent table
- ON DELETE CASCADE behavior

## 🧠 Concept
A foreign key is used to create a relationship between two tables.
It ensures referential integrity.

In this example:
- `addresses.user_id` references `users.id`
- If a user is deleted, related addresses are automatically deleted (ON DELETE CASCADE)

## 💡 Why ON DELETE CASCADE?
It prevents orphan records and keeps the database clean.

## 🚀 Database Used
MySQL

