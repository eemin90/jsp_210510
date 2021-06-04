CREATE TABLE Board
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    body VARCHAR(2047) NOT NULL,
    memberId VARCHAR(255) NOT NULL,
    inserted TIMESTAMP DEFAULT NOW()
);

DESC Board;
DESC Member;

SELECT * FROM Board;

DELETE FROM Board
WHERE memberId NOT IN (
	SELECT id FROM Member
);

ALTER TABLE Board
ADD FOREIGN KEY (memberId)
REFERENCES Member(id);
