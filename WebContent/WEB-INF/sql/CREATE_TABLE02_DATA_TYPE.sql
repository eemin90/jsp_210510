-- Data Type

-- NUMBER
-- INT, DECIMAL (정수, 소수)
CREATE TABLE MyTable3 (
	Col1 INT,
    Col2 DECIMAL
);

INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);

SELECT * FROM MyTable3;

DESC MyTable3;

CREATE TABLE MyTable4 (
	Col1 DECIMAL, -- 소수점 자리 수 없음
    Col2 DECIMAL(10, 2), -- (뒤의 소수점 포함 총 숫자 수, 소수점 자리 수) -> 뒤의 소수점 2자리 포함하여 총 10자리 숫자까지 가능, 소수점 2자리(입력안할 시 빈자리에 0 들어감)
    Col3 DECIMAL(3, 1) -- (뒤의 소수점 포함 총 숫자 수, 소수점 자리 수) -> 뒤의 소수점 1자리 포함하여 총 3자리 숫자까지 가능, 소수점 1자리
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14);

SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 33.1);

SELECT * FROM MyTable4;


-- CHAR(String)
CREATE TABLE MyTable5 (
	Col1 CHAR(5), -- 고정 자리수(빈 칸은 공백이 차지)
    Col2 VARCHAR(5) -- 가변 자리수
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc', 'abc');

-- 'abc  ', 'abc
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT * FROM MyTable5;

-- 'abc', 'abc'
SET sql_mode = '';
SELECT * FROM MyTable5;


-- DATE, DATETIME, TIMESTAMP
CREATE TABLE MyTable6 (
	Col1 DATE,
    Col2 DATETIME,
    Col3 TIMESTAMP
);

INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02',
 '2021-06-02 11:07:30',
 '2021-06-02 11:07:30');

SELECT * FROM MyTable6;
