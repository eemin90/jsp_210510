CREATE TABLE MyTable7 (
	id INT,
    name VARCHAR(255)
);

-- 테이블에 제약 사항을 정하지 않으면 같은 값이 들어갈 수도 있고
INSERT INTO MyTable7 (id, name)
VALUES (3, 'hello');

-- null값이 들어갈 수도 있다
INSERT INTO MyTable7 (id)
VALUES (4);

INSERT INTO MyTable7 (name)
VALUES ('donald');

-- 때문에, 먼저 예를들어 NULL값이 없으려면 NOT NULL 제약을 걸어야 한다
CREATE TABLE MyTable8 (
	id INT NOT NULL,
    name VARCHAR(255) NOT NULL
);

-- NOT NULL 제약 사항이 있는 컬럼때문에 NULL값은 허용되지 않는다
INSERT INTO MyTable8 (id)
VALUES (5);

-- MyTable8 테이블은 NOT NULL 제약 사항만 있기 때문에 중복 값은 허용되고 있는 상태다
INSERT INTO MyTable8 (id, name)
VALUES (3, 'hello');
