CREATE TABLE users (
  name TEXT NOT NULL,
  phoneNumber TEXT NOT NULL,
  balance TEXT NOT NULL,
  age INTEGER,
  gender TEXT
);

SELECT * FROM users;

SELECT name, age, balance FROM users
ORDER BY age ASC, balance DESC;
