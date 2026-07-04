-- Create Table
CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO student(id, name, marks)
VALUES
(101,'soniya',98),
(102,'priya',97),
(103,'kalpna',95),
(104,'bhumi',94);

-- Show all records
SELECT * FROM student;

-- Show names
SELECT name FROM student;

-- Students with marks greater than 95
SELECT * FROM student
WHERE marks > 95;

-- Sort by marks
SELECT * FROM student
ORDER BY marks DESC;

-- Max value
SEELECT MAX(marks) AS HIGHEST_MARKS
FROM STUDENTS;

-- COUNT VALUE
SELECT COUNT(*) AS TOTAL_STUDENTS
FROM STUDENT;