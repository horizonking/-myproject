/* removing any database that exist called edu_institute*/
DROP DATABASE IF EXISTS edu_institute;
/*creating a database*/
create database edu_institute;
USE edu_institute;
/*craeting table with the following structure*/
create table students (
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
gender CHAR(1),
enrollment_date DATE,
program VARCHAR(50)
);
/*data insersion*/
INSERT INTO students (student_id, name, age, gender, enrollment_date, program) VALUES
(1, 'John Doe', 22, 'M',  '2020-08-15', 'Data Science'),
(2, 'Jane Smith', 20, 'F',  '2020-09-15', 'Computer Science'),
(3, 'Alice Johnson', 25, 'F',  '2020-10-15', 'Data Science'),
(4, 'Bob Brown', 23, 'M',  '2020-11-15', 'Computer Science'),
(5, 'Charles Davis', 24, 'M',  '2020-12-15', 'Data Science');
/*query to select all columns for all students taking data science*/ 
SELECT * FROM students WHERE program = 'Data Science';
/*query to find total number of stuendts and display it as Total Students*/
SELECT COUNT(*) AS 'Total Students' FROM students;
/*query to display current date*/
SELECT CURRENT_DATE() AS 'Today\'s Date';
/* query to select the student names and their enrolment dates but 
display the name column in uppercase*/
SELECT UPPER(name) AS 'Student Name', enrollment_date FROM students;
/*query to count the number of students in each program and display the 
results in descending order of count. Name the count column as Number of 
Students*/
SELECT program, COUNT(*) AS 'Number of Students' FROM students GROUP BY program ORDER BY COUNT(*) DESC;
/*query to find the youngest student's name and age*/
SELECT name, age FROM students ORDER BY age ASC LIMIT 1;



