USE Test;

CREATE TABLE Table03
(
	id3 INT,
    name VARCHAR(255)
);

CREATE TABLE Table04
(
	id4 INT,
    city VARCHAR(255)
);

INSERT INTO Table03 (id3, name) VALUES (1, 'bts');
INSERT INTO Table03 (id3, name) VALUES (2, 'twice');
INSERT INTO Table03 (id3, name) VALUES (3, 'bravegirls');

SELECT * FROM Table03;

INSERT INTO Table04 (id4, city) VALUES (10, 'seoul');
INSERT INTO Table04 (id4, city) VALUES (20, 'yongin');
INSERT INTO Table04 (id4, city) VALUES (30, 'jeju');

SELECT * FROM Table04;

-- UNION. 갯수가 같고 타입이 유사해야함
SELECT * FROM Table03
UNION
SELECT * FROM Table04;

-- UNION(ALIAS)
SELECT id3 id, name nc FROM Table03
UNION
SELECT * FROM Table04; -- INT, VARCHAR

SELECT id3, name FROM Table03
UNION
SELECT city, id4 FROM Table04; -- VARCHAR, VARCHAR

-- UNION ALL
SELECT * FROM Table03
UNION ALL
SELECT * FROM Table04;
