-- UNIQUE
CREATE TABLE MyTable9 (
	id INT UNIQUE,
    name VARCHAR(255)
);

-- id 컬럼은 UNIQUE 제약 사항을 가지고 있으므로, 같은 값이 올 수 없다
INSERT INTO MyTable9 (id, name)
VALUES (2, 'hello');

-- id 컬럼은 UNIQUE 제약 사항만 있고, name 컬럼은 제약 사항이 없어서 id null, name 중복 가능
INSERT INTO MyTable9 (name)
VALUES ('donald');

-- NULL
SELECT * FROM MyTable9
WHERE id IS NULL; -- id 컬럼의 값이 NULL인 레코드

SELECT * FROM MyTable9
WHERE id IS NOT NULL; -- id 컬럼의 값이 NULL이 아닌 레코드

-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9; -- id 컬럼의 값이 NULL이면 0리턴

-- 컬럼에 UNIQUE와 NOT NULL 제약 사항을 적용하면 중복 값이 불가하고 NULL값도 줄 수 없게 된다
CREATE TABLE MyTable10 (
	id INT UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL
);
