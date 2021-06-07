USE test;

CREATE TABLE Users
(
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes
(
	userId INT,
    `like` VARCHAR(255)
);

INSERT INTO Users (id, name) VALUES (1, 'Patrik');
INSERT INTO Users (id, name) VALUES (2, 'Albert');
INSERT INTO Users (id, name) VALUES (3, 'Maria');
INSERT INTO Users (id, name) VALUES (4, 'Darwin');
INSERT INTO Users (id, name) VALUES (5, 'Elizabeth');

INSERT INTO Likes (userId, `like`) VALUES (3, 'Stars');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Climbing');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Code');
INSERT INTO Likes (userId, `like`) VALUES (6, 'Rugby');
INSERT INTO Likes (userId, `like`) VALUES (4, 'Apples');

SELECT * FROM Users;
SELECT * FROM Likes;

-- JOIN (INNER JOIN)
SELECT Users.name, Likes.`like` FROM Users JOIN Likes ON Users.id = Likes.userId;
SELECT Users.name, Likes.`like` FROM Users INNER JOIN Likes ON Users.id = Likes.userId;

-- JOIN (LEFT JOIN)
SELECT Users.name, Likes.`like` FROM Users LEFT JOIN Likes ON Users.id = Likes.userId;

-- JOIN (RIGHT JOIN)
SELECT Users.name, Likes.`like` FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId;

-- JOIN (MySQL=CROSS JOIN, SQL=FULL OUTER JOIN)
SELECT Users.name, Likes.`like` FROM Users CROSS JOIN Likes;

-- 좋아하는 것이 없는 사용자
SELECT Users.name, Likes.`like` FROM Users LEFT JOIN Likes ON Users.id = Likes.userId
WHERE Likes.userId IS NULL;

-- 사용자들이 좋아하지 않는 것
SELECT Users.name, Likes.`like` FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId
WHERE Users.Id IS NULL;
