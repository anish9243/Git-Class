-- Allow remote connections to bobdata by Bob
GRANT ALL PRIVILEGES ON bobdata.* to 'Bob'@'%' IDENTIFIED BY 'pa55word' with grant option;

Use bobdata;

--
-- Create & populate STUDENTS table
--
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  date_of_birth DATE
);

INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (1, 'Ethan', 'Smith', '2000-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (2, 'Olivia', 'Lee', '1999-06-12');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (3, 'Liam', 'Patel', '2000-11-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (4, 'Ava', 'Wong', '2000-02-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (5, 'Noah', 'Johnson', '1999-12-13');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (6, 'Emma', 'Chen', '2001-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (7, 'Lucas', 'Singh', '2000-06-12');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (8, 'Charlotte', 'Thompson', '2001-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (9, 'Benjamin', 'Ahmed', '2001-02-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (10, 'Sophia', 'Martin', '2000-12-13');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (11, 'William', 'Liu', '2002-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (12, 'Mia', 'Garcia', '2001-06-14');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (13, 'Samuel', 'Wilson', '2002-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (14, 'Amelia', 'Cohen', '2002-02-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (15, 'Alexander', 'Nguyen', '2001-12-13');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (16, 'Isabella', 'Taylor', '2003-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (17, 'James', 'Khan', '2002-06-12');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (18, 'Harper', 'Robinson', '2003-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (19, 'Henry', 'Li', '2003-02-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (20, 'Abigail', 'Wilson', '2002-12-15');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (21, 'Daniel', 'Wong', '2004-05-11');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (22, 'Emily', 'Rodriguez', '2003-05-12');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (23, 'Joseph', 'Brown', '2004-05-19');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (24, 'Madison', 'Ahmed', '2004-02-05');
INSERT INTO Students (student_id, first_name, surname, date_of_birth) VALUES (25, 'Michael', 'Martinez', '2003-12-15');

--
-- Create & populate COURSES table
--
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(255),
  level VARCHAR(255));

INSERT INTO Courses (course_id, course_name, level) VALUES (1, 'Introduction to Cloud', 'Novice');
INSERT INTO Courses (course_id, course_name, level) VALUES (2, 'Introduction to DevOps', 'Novice');
INSERT INTO Courses (course_id, course_name, level) VALUES (3, 'Introduction to Application Development', 'Novice');
INSERT INTO Courses (course_id, course_name, level) VALUES (4, 'Infrastructure as Code for Begineers', 'Novice');
INSERT INTO Courses (course_id, course_name, level) VALUES (5, 'Ansible Deep Dive', 'Intermediate');
INSERT INTO Courses (course_id, course_name, level) VALUES (6, 'Terraform Modules', 'Intermediate');
INSERT INTO Courses (course_id, course_name, level) VALUES (7, 'Ansible Secrets', 'Intermediate');
INSERT INTO Courses (course_id, course_name, level) VALUES (8, 'Encyption in transit', 'Intermediate');
INSERT INTO Courses (course_id, course_name, level) VALUES (9, 'CiCD toolchain', 'Intermediate');
INSERT INTO Courses (course_id, course_name, level) VALUES (10, 'Test Driven Development', 'Advanced');
INSERT INTO Courses (course_id, course_name, level) VALUES (11, 'Container Management Platforms', 'Advanced');
INSERT INTO Courses (course_id, course_name, level) VALUES (12, 'Container Security', 'Advanced');

--
-- Create & populate GRADES table
--
CREATE TABLE Grades (
  enrollment_id INT,
  assignment_id INT,
  mark INT);

Alter Table Grades ADD PRIMARY KEY (Enrollment_ID, Assignment_ID);

INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (1, 1, 40);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (1, 2, 80);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (1, 3, 95);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (2, 1, 99);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (2, 2, 100);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (4, 5, 64);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (3, 4, 65);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (3, 2, 66);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (5, 1, 75);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (6, 1, 76);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (7, 1, 77);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (9, 2, 78);
INSERT INTO Grades (enrollment_id, assignment_ID, mark) VALUES (10, 3, 90);

--
-- Create & populate ENROLLMENTS table
--
CREATE TABLE Enrollments (
  enrollment_id INT PRIMARY KEY,
  course_id INT,
  student_id INT
);

INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (1, 1, 1);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (2, 2, 1);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (3, 3, 1);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (4, 4, 1);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (5, 1, 2);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (6, 2, 2);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (7, 3, 2);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (8, 1, 4);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (9, 2, 5);
INSERT INTO Enrollments (enrollment_id, course_id, student_id) VALUES (10, 3, 6);