CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- TABLE에 값 채우기
INSERT INTO zoo VALUES 
('gorilla', 'omnivore', 215, 180, 5),
('tiger', 'carnivore', 220, 115, 3),
('elephant', 'herbivore', 3800, 280, 10),
('dog', 'omnivore', 8, 20, 1),
('panda', 'herbivore', 80, 90, 2),
('pig', 'omnivore', 70, 45, 5);

-- zoo TABLE에 있는 값들 중 weight 값이 100미만인 data 삭제
-- 그러나 ROLLBACK으로 없던 일
BEGIN;
  DELETE FROM zoo
  WHERE weight < 100;
ROLLBACK;

-- zoo TABLE에 있는 값들 중 eat가 'omnivore'인 data 삭제
-- COMMIT으로 이행됨
BEGIN;
  DELETE FROM zoo
  WHERE eat = 'omnivore';
COMMIT;

-- eat가 'carnivore'와 'herbivore'인 동물 data만 존재
-- tiger, elephant, panda와 관련된 정보들 모두 출력
SELECT COUNT(*)
FROM zoo;
