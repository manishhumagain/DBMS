CREATE DATABASE student_database;
USE student_database;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
INSERT INTO students VALUES
(1, 'ramesh', 19),
(2, 'hari', 20);
SELECT * FROM students;
-- Insert More Records
INSERT INTO students VALUES
(3, 'Sita', 21),
(4, 'Hari', 22),
(5, 'Gita', 20);

-- View All Students
SELECT * FROM students;

-- View Specific Columns
SELECT name, age FROM students;

-- Find Students Older Than 20
SELECT * FROM students
WHERE age > 20;

-- Update Student Age
UPDATE students
SET age = 23
WHERE id = 4;

-- Update Student Name
UPDATE students
SET name = 'Ramesh'
WHERE id = 2;

-- Delete a Student
DELETE FROM students
WHERE id = 5;

-- Add a New Column
ALTER TABLE students
ADD address VARCHAR(100);

-- Update Address
UPDATE students
SET address = 'Kathmandu'
WHERE id = 1;

-- Display Table Structure
DESCRIBE students;

-- Rename Column (MySQL 8.0+)
ALTER TABLE students
RENAME COLUMN name TO full_name;

-- Change Data Type
ALTER TABLE students
MODIFY age TINYINT;

-- Count Total Students
SELECT COUNT(*) AS total_students
FROM students;

-- Find Average Age
SELECT AVG(age) AS average_age
FROM students;

-- Find Maximum Age
SELECT MAX(age) AS oldest_student
FROM students;

-- Find Minimum Age
SELECT MIN(age) AS youngest_student
FROM students;

-- Sort by Age Ascending
SELECT * FROM students
ORDER BY age ASC;

-- Sort by Age Descending
SELECT * FROM students
ORDER BY age DESC;

-- Search Student by Name
SELECT * FROM students
WHERE full_name = 'Bikash';

-- Drop a Column
ALTER TABLE students
DROP COLUMN address;

-- Delete All Records
DELETE FROM students;

-- Remove Table
DROP TABLE students;

-- Remove Database
DROP DATABASE student_database;