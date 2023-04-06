CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);

SELECT first_name, age, balance FROM users
ORDER BY age, balance DESC;

SELECT first_name, age FROM users
ORDER BY first_name, age DESC;

SELECT first_name, country FROM users
WHERE first_name = '건우' AND country = '경기도';

SELECT * FROM users
WHERE country NOT IN ('경기도', '강원도') 
AND age BETWEEN 20 and 30
ORDER BY age;

SELECT first_name, phone, country from users
WHERE phone LIKE '%-51__-%'
AND country <> '서울';