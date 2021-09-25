-- create table
CREATE TABLE notes (
    id int NOT NULL PRIMARY KEY,
    body varchar(255),
    student_id int
);

-- insert records
INSERT INTO notes (id, body, student_id)
VALUES
    (1, 'React is a frontend framework.', 1),
    (2, 'Tailwind CSS is a helpful library.', 2),
    (3, 'Avion School provides great learning programs.', 2),
    (4, 'Android Studio sucks.', 2),
    (5, 'TypeScript works well with React.', 3),
    (6, 'Solidity would be interesting to learn due to the blockchain revolution.', 3),
    (7, 'Using wireframes are useful for designing websites.', 4),
    (8, 'Calisthenics is a great way to workout.', 5),
    (9, 'The mitochondria is the powerhouse of the cell.', NULL),
    (10, 'Python and Ruby are general purpose programming languages.', NULL);

-- joins
-- inner
SELECT *
FROM students as s
INNER JOIN notes as n
ON s.id = n.student_id;

-- left
SELECT *
FROM students as s
LEFT JOIN notes as n
ON s.id = n.student_id;

-- right
SELECT *
FROM students as s
RIGHT JOIN notes as n
ON s.id = n.student_id;

-- full
SELECT *
FROM students as s
FULL JOIN notes as n
ON s.id = n.student_id;