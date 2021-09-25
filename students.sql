- - create table CREATE TABLE students (
    id int NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    location VARCHAR(255)
);
- -
insert
    records
INSERT INTO
    students (
        id,
        first_name,
        middle_name,
        last_name,
        age,
        location
    )
VALUES
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Issac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'lam', 25, 'Manila');
- -
update
    students
UPDATE
    students
SET
    first_name = 'Ivan',
    middle_name = 'Ingram',
    last_name = 'Howard',
    age = 25,
    location = 'Bulacan'
WHERE
    id = 1;
- - delete records
DELETE FROM
    students
WHERE
    id = 6;
- - display count of all students
SELECT
    COUNT(*)
FROM
    students;
- -
select
    all students with location = Manila
SELECT
    *
FROM
    students
WHERE
    location = 'Manila';
- - display average age of all students
SELECT
    AVG(age)
FROM
    students;
- - display all students by age in descending order
SELECT
    *
FROM
    students
ORDER BY
    age DESC;