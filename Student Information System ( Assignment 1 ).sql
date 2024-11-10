--Assignment 1 (Student Information System)--

--Task 1--

--Creating Database--
CREATE DATABASE SISDB
USE SISDB

--Creating Tables--
--Students--
CREATE TABLE Students (
student_id INT IDENTITY PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
date_of_birth DATE,
email VARCHAR(50) UNIQUE,
phone_number VARCHAR(20)
)
--Teacher--
CREATE TABLE Teacher (
teacher_id INT IDENTITY PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(50) UNIQUE
)
--Courses--
CREATE TABLE Courses (
course_id INT IDENTITY PRIMARY KEY,
course_name VARCHAR(30),
credits TINYINT,
teacher_id INT NOT NULL,
FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
ON UPDATE CASCADE
ON DELETE CASCADE
)
--Enrollments--
CREATE TABLE Enrollments (
enrollment_id INT IDENTITY PRIMARY KEY,
student_id INT NOT NULL,
course_id INT NOT NULL,
enrollment_date DATE DEFAULT CAST(GETDATE() AS DATE) ,
FOREIGN KEY (student_id) REFERENCES Students(student_id) 
ON UPDATE CASCADE
ON DELETE CASCADE,
FOREIGN KEY (course_id) REFERENCES Courses(course_id)
ON UPDATE CASCADE
ON DELETE CASCADE
)
--Payments--
CREATE TABLE Payments (
payment_id INT IDENTITY PRIMARY KEY,
student_id INT NOT NULL,
amount DECIMAL(10,2),
payment_date DATE,
FOREIGN KEY (student_id) REFERENCES Students(student_id)
ON UPDATE CASCADE
ON DELETE CASCADE
)


--Inserting Values--
--Students Table--
INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number) 
VALUES 
('Karthi', 'Keyan', '1995-04-01', 'karthi.keyan@example.com', '1234567890'),
('Naveen', 'Prabhu', '1996-03-15', 'naveen.prabhu@example.com', '2345678901'),
('Jeeva', 'Bharathi', '1997-07-23', 'jeeva.bharathi@example.com', '3456789012'),
('Mathu', 'Kumar', '1995-08-30', 'mathu.kumar@example.com', '4567890123'),
('Nagul', 'Kumar', '1998-12-12', 'nagul.kumar@example.com', '5678901234'),
('Naveen', 'Kumar', '1997-02-10', 'naveen.kumar@example.com', '6789012345'),
('Lokesh', 'Kanagaraj', '1994-11-05', 'lokesh.kanagaraj@example.com', '7890123456'),
('Dinesh', 'Kumar', '1996-09-22', 'dinesh.kumar@example.com', '8901234567'),
('Bharat', 'Nivas', '1995-06-15', 'bharat.nivas@example.com', '9012345678'),
('Raj', 'Kumar', '1993-12-01', 'raj.kumar@example.com', '0123456789')

--Teacher Table--
INSERT INTO Teacher (first_name, last_name, email)
VALUES
('Arumugam', 'Muthu', 'arumugam.Muthu@example.com'),
('Kavitha', 'Raman', 'kavitha.raman@example.com'),
('Sundar', 'Venkatesan', 'sundar.venkatesan@example.com'),
('Priya', 'Rajendran', 'priya.rajendran@example.com'),
('Ravi', 'Chandrasekar', 'ravi.chandrasekar@example.com'),
('Anjali', 'Subramanian', 'anjali.subramanian@example.com'),
('Madhavan', 'Pillai', 'madhavan.pillai@example.com'),
('Saranya', 'Kumar', 'saranya.kumar@example.com'),
('Vignesh', 'Muthu', 'vignesh.muthu@example.com'),
('Bhavani', 'Krishnan', 'bhavani.krishnan@example.com')
--Courses Table--
INSERT INTO Courses (course_name, credits, teacher_id)
VALUES
('Mathematics', 3, 1),
('Physics', 2, 2),
('Computer Science', 3, 3),
('Electrical Engineering', 2, 4),
('Mechanical Engineering', 3, 5),
('Civil Engineering', 3, 6),
('Chemical Engineering', 3, 7),
('Biotechnology', 2, 8),
('Environmental Science', 2, 9),
('Business Administration', 3, 10)
--Enrollments Table-- 
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-02-10'),
(3, 3, '2024-03-20'),
(4, 4, '2024-04-05'),
(5, 5, '2024-05-12'),
(6, 6, '2024-06-18'),
(7, 7, '2024-07-25'),
(8, 8, '2024-08-30'),
(9, 9, '2024-09-10'),
(10, 10, '2024-10-20')
--Payment Table--
INSERT INTO Payments (student_id, amount, payment_date)
VALUES
(1, 5000.00, '2024-01-15'),
(2, 4500.00, '2024-02-10'),
(3, 5500.00, '2024-03-20'),
(4, 6000.00, '2024-04-05'),
(5, 4700.00, '2024-05-12'),
(6, 4800.00, '2024-06-18'),
(7, 5300.00, '2024-07-25'),
(8, 4900.00, '2024-08-30'),
(9, 5100.00, '2024-09-10'),
(10, 5200.00, '2024-10-20')


-- Task 2 --
/*  Select, Where, Between, AND, LIKE:

1. Write an SQL query to insert a new student into the "Students" table with the following details: 
a. First Name: John 
b. Last Name: Doe 
c. Date of Birth: 1995-08-15 
d. Email: john.doe@example.com 
e. Phone Number: 1234567890 */

INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number)
VALUES ('John','Doe','1995-08-15','john.doe@example.com','1234567890')

/*2. Write an SQL query to enroll a student in a course. Choose an existing student and course and 
insert a record into the "Enrollments" table with the enrollment date. */

INSERT INTO Enrollments(student_id,course_id,enrollment_date) VALUES (11,1,'2024-11-20')

/*3. Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and 
modify their email address. */

UPDATE Teacher
SET email='vigneshwaran.muthu@gmail.com'
WHERE teacher_id=9

/*4. Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select 
an enrollment record based on the student and course. */

DELETE FROM Enrollments WHERE student_id=7 AND course_id=7

/*5. Update the "Courses" table to assign a specific teacher to a course. Choose any course and 
teacher from the respective tables. */

UPDATE Courses
SET teacher_id=1
WHERE course_id=10

/*6. Delete a specific student from the "Students" table and remove all their enrollment records 
from the "Enrollments" table. Be sure to maintain referential integrity. */

DELETE FROM Students WHERE student_id=2

SELECT * FROM Students
SELECT * FROM Enrollments
SELECT * FROM Payments

/*7. Update the payment amount for a specific payment record in the "Payments" table. Choose any 
payment record and modify the payment amount. */

UPDATE Payments
SET amount=2900.00
WHERE payment_id=5


--Task 3--
/* Aggregate functions, Having, Order By, GroupBy and Joins:

1. Write an SQL query to calculate the total payments made by a specific student. You
will need to
join the "Payments" table with the "Students" table based on the student's ID.*/

SELECT s.student_id,SUM(amount) AS total 
FROM Students s
LEFT JOIN Payments p
ON s.student_id=p.student_id
GROUP BY s.student_id


/*2. Write an SQL query to retrieve a list of courses along with the count of students enrolled in each 
course. Use a JOIN operation between the "Courses" table and the "Enrollments" table. */

SELECT course_name,COUNT(student_id) AS student_count
FROM Courses c
LEFT JOIN Enrollments e
ON c.course_id=e.course_id
GROUP BY c.course_name


/*3. Write an SQL query to find the names of students who have not enrolled in any course. Use a 
LELEFT JOIN between the "Students" table and the "Enrollments" table to identify students 
wiwithout enrollments. */

SELECT CONCAT_WS(' ',first_name,last_name) AS student_name
FROM Students s
LEFT JOIN Enrollments e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL

/*4. Write an SQL query to retrieve the first name, last name of students, and the names of the 
courses they are enrolled in. Use JOIN operations between the "Students" table and the 
"Enrollments" and "Courses" tables.*/

SELECT 
first_name,last_name,course_name
from Students s
JOIN Enrollments e
ON s.student_id=e.student_id
JOIN Courses c
ON c.course_id=e.course_id


/* 5.Create a query to list the names of teachers and the courses they are assigned to. Join the 
"Teacher" table with the "Courses" table. */SELECT CONCAT_WS(' ',first_name,last_name) AS teacher_name,course_nameFROM Teacher tLEFT JOIN Courses cON t.teacher_id=c.teacher_id/*6. Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the 
"Students" table with the "Enrollments" and "Courses" tables.*/

SELECT 
CONCAT_WS(' ',first_name,last_name) as student_name,enrollment_date,course_name
FROM Students s
JOIN Enrollments e
ON s.student_id=e.student_id
JOIN Courses c
ON e.course_id=c.course_id
WHERE c.course_name='Computer Science'

/*7. Find the names of students who have not made any payments. Use a LEFT JOIN between the 
"Students" table and the "Payments" table and filter for students with NULL payment records.*/

SELECT 
s.student_id,CONCAT_WS(' ',first_name,last_name) as student_name
FROM Students s
LEFT JOIN Payments p
ON s.student_id=p.student_id
WHERE P.student_id IS NULL


/*8. Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN 
between the "Courses" table and the "Enrollments" table and filter for courses with NULL 
enrollment records.*/

SELECT course_name
FROM Courses c
LEFT JOIN Enrollments e
ON c.course_id=e.course_id
WHERE e.course_id IS NULL

/*9. Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments" 
table to find students with multiple enrollment records.*/
-- Inserting values for more than one enrollment--
INSERT INTO Enrollments (enrollment_id,student_id,course_id,enrollment_date)
VALUES  (12,5,4,'2024-09-12'),
        (13,8,4,'2024-09-12')


SELECT e.student_id 
FROM Enrollments e
LEFT JOIN Enrollments en
ON e.student_id=en.student_id
GROUP BY e.student_id
HAVING COUNT(en.student_id)>1

/*10. Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher" 
table and the "Courses" table and filter for teachers with NULL course assignments.*/

SELECT T.teacher_id,CONCAT_WS(' ',first_name,last_name) AS teacher_name
FROM Teacher t
LEFT JOIN Courses c
ON t.teacher_id=c.teacher_id
WHERE c.teacher_id IS NULL

--Task 4--
-- Subquery and its type: --

/*1. Write an SQL query to calculate the average number of students enrolled in each course. Use 
aggregate functions and subqueries to achieve this. */

SELECT course_id,course_name,
(
 (SELECT COUNT(student_id) FROM Enrollments e WHERE e.course_id=c.course_id) * 1.0/
  (
  SELECT COUNT(course_id) FROM Courses
  )
) AS average_students
FROM Courses c

/*2. Identify the student(s) who made the highest payment. Use a subquery to find the maximum 
payment amount and then retrieve the student(s) associated with that amount. */

SELECT student_id,CONCAT_WS('',first_name,last_name) AS student_name FROM Students
WHERE student_id=(SELECT student_id
FROM Payments
WHERE amount=(SELECT MAX(amount)FROM Payments)
)


/*3. Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the
course(s) with the maximum enrollment count.*/

Select * from Enrollments

Select Enrollments_No_Max.Course_id ,c.course_name, Max(Enroll) As Enrollment  from
(Select course_id, Count(Enrollment_id) as Enroll from Enrollments Group by course_id) As Enrollments_No_Max 
Left join Courses c on Enrollments_No_Max.course_id=c.course_id 
group by Enrollments_No_Max.course_id , c.course_name
order by Enrollment desc 
;

/*4. Calculate the total payments made to courses taught by each teacher. Use subqueries to sum
payments for each teacher's courses.*/

Select  CONCAT_WS(' ',t.first_name,t.last_name) as teacher_name,
(select Sum(p.amount) from  Enrollments e
join Payments p on e.student_id=p.student_id
join Courses c on e.course_id=c.course_id
where t.teacher_id=c.teacher_id 
) As Sum_of_Amount_teacher_made from teacher t ;


/* 5. Identify students who are enrolled in all available courses. Use subqueries to compare a
student's enrollments with the total number of courses*/

Select e.student_id , CONCAT_WS(' ',s.first_name,s.last_name) as Name, Count(e.course_id) as No_of_Course from Enrollments e
join Students s on e.student_id=s.student_id
group by e.student_id ,s.first_name,s.last_name
having count(course_id)=(Select count(*) from Courses )

/*6. Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to
find teachers with no course assignments.*/
select * from Teacher t 
where t.teacher_id Not In (select c.teacher_id from Courses c);

/*7. Calculate the average age of all students. Use subqueries to calculate the age of each student
based on their date of birth.
*/

Select
    AVG(age) as average_age
From (
    Select
        DATEDIFF(YEAR, date_of_birth, GETDATE())  AS age
    From 
        Students
) as student_ages;

/* 8. Identify courses with no enrollments. Use subqueries to find courses without enrollment
records */
 
 Select * from Courses c
 where c.course_id not In ( select e.course_id from Enrollments e  group by e.course_id );
/*9. Calculate the total payments made by each student for each course they are enrolled in. Use
subqueries and aggregate functions to sum payments.*/

select s.Student_id ,CONCAT_WS(' ',first_name,last_name) as [Name],c.course_name,
(Select SUM(p.amount) from Payments p where p.student_id=s.student_id) as Amt  from Students s
join Enrollments e on s.student_id=e.student_id
join Courses c on e.course_id=c.course_id

/* 10. Identify students who have made more than one payment. Use subqueries and aggregate
functions to count payments per student and filter for those with counts greater than one.*/

Select * from Students 
where student_id In (select student_id from Enrollments group by student_id having count(enrollment_id)>1);

/*11. Write an SQL query to calculate the total payments made by each student. Join the "Students"
table with the "Payments" table and use GROUP BY to calculate the sum of payments for each
student*/

select s.student_id ,s.first_name, Sum(p.amount) from Students s 
left join Payments p on s.student_id=p.student_id  group by s.student_id,s.first_name;

/* 12. Retrieve a list of course names along with the count of students enrolled in each course. Use
JOIN operations between the "Courses" table and the "Enrollments" table and GROUP BY to
count enrollments.*/

Select c.Course_id , c.Course_name , count(e.student_id) as No_of_Count  from Courses c
left join Enrollments e on c.course_id=e.course_id  group by c.Course_id , c.Course_name ;

/* 13. Calculate the average payment amount made by students. Use JOIN operations between the
"Students" table and the "Payments" table and GROUP BY to calculate the average.*/

Select s.student_id , s.first_name , avg(p.amount) as Avg_Amount from Students s
left join Payments p on s.student_id=p.student_id group by s.student_id , s.first_name ;

