USE test;

CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES
('kim', 1);

INSERT INTO Table01
(name, bookId)
VALUES
('lee', 2);

INSERT INTO Table01
(name, bookId)
VALUES
('choi', 3);

INSERT INTO Table01
(name, bookId)
VALUES
('park', 4);

INSERT INTO Table02
(bookName)
VALUES
('book1');

INSERT INTO Table02
(bookName)
VALUES
('book2');

INSERT INTO Table02
(bookName)
VALUES
('book3');

INSERT INTO Table02
(bookName)
VALUES
('book4');

SELECT * FROM Table01; -- 4개 레코드
SELECT * FROM Table02; -- 4개 레코드
SELECT * FROM Table01, Table02; -- 16개 레코드

-- JOIN
SELECT * FROM
Table01 JOIN Table02
ON Table01.bookId = Table02.id;

-- ALIAS(TABLE) -- AS는 생략 가능
SELECT * FROM
Table01 AS t1 JOIN Table02 AS t2
ON t1.bookId = t2.id;

-- ALIAS(COLUMN) -- AS는 생략 가능
SELECT t1.id, 
t1.name AS name1, 
t1.bookId AS bookId, 
t2.id AS id2, 
t2.bookName AS bName
FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;
