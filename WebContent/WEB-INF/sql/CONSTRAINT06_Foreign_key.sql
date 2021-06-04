-- member
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- board
CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    t17Id VARCHAR(255) NOT NULL,
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id) -- t17Id 컬럼은 MyTable17 테이블의 id 컬럼을 참조
);

INSERT INTO MyTable17
(id, name)
VALUES
('donald','trump');

INSERT INTO MyTable18
(title, t17Id)
VALUES
('usa', 'donald'); -- MyTable17에 'donald'이라는 id값이 있기 때문에 여기서 t17Id에 'donald'값이 들어간다

SELECT * FROM MyTable18;

INSERT INTO MyTable18
(title, t17Id)
VALUES
('korea', 'kim'); -- MyTable17에 'kim'이라는 id값이 없기 때문에 여기서 t17Id에 'kim'값이 안들어간다

DELETE FROM MyTable17
WHERE id = 'donald'; -- t17Id 컬럼이 참조하고 있기 때문에 삭제가 불가

DELETE FROM MyTable18
WHERE t17Id = 'donald'; -- 때문에 참조하고 있는 컬럼의 레코드를 먼저 삭제해야 한다
