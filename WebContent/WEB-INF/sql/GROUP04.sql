USE test2;

SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Board b JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.*, COUNT(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;

SELECT b.id boardId, 
       b.title title, 
       m.name name,
       COUNT(c.id) numberOfComment, 
       b.inserted 
FROM Board b 
JOIN Member m 
ON b.memberID = m.id 
LEFT JOIN Comment c 
ON b.id = c.boardId
GROUP BY b.id
ORDER BY b.id DESC
LIMIT 0, 5;

SELECT m.*, COUNT(b.id) FROM Member m
LEFT JOIN Board b
ON m.id = b.memberId
WHERE m.id = '123';

SELECT m.*, COUNT(c.id) FROM Member m
LEFT JOIN Comment c
ON m.id = c.memberId
WHERE m.id = '123';

SELECT m.*, COUNT(DISTINCT b.id), COUNT(DISTINCT c.id) FROM Member m
JOIN Board b ON m.id = b.memberId
JOIN Comment c ON m.id = c.memberId
WHERE m.id = '123';

SELECT m.*, b.*, c.* FROM Member m
JOIN Board b ON m.id = b.memberId
JOIN Comment c ON m.id = c.memberId
WHERE m.id = '123';

SELECT * FROM Board WHERE memberId = '123';
SELECT * FROM Comment WHERE memberId = '123';
