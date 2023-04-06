CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- 1) TEXT, INT 일치
INSERT INTO zoo 
VALUES 
  ('gorilla', 'omnivore', 210, 180, 5);

-- 2) rowid는 Unique한 값으로 똑같은 값을 할당할 수 없다.
INSERT INTO zoo (rowid, name, eat, weight, age) 
VALUES
  (10,'dolphin', 'carnivore', 210, 3),
  (11, 'alligator', 'carnivore', 250, 50);

-- 3) NOT NULL이 올 수 없는 weight는 꼭 넣어줘야 한다.
INSERT INTO zoo (name, eat, weight, age) 
VALUES
  ('dolphin', 'carnivore', 200, 3);
