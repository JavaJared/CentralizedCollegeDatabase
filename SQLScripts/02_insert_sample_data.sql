-- Insert sample data into Departments
INSERT INTO Departments (DepartmentID, Name, Location) VALUES
(1, 'Department of Mathematics', 'Building A'),
(2, 'Department of English', 'Building B'),
(3, 'Department of History', 'Building C');

-- Insert sample data into Instructors
INSERT INTO Instructors (InstructorID, Name, Email, DepartmentID) VALUES
(1, 'John Doe', 'johndoe@example.com', 1),
(2, 'Jane Smith', 'janesmith@example.com', 2),
(3, 'James Brown', 'jamesbrown@example.com', 3);

-- Insert sample data into Courses
INSERT INTO Courses (CourseID, DepartmentID, Title, Credits, InstructorID) VALUES
(101, 1, 'Calculus', 4, 1),
(102, 1, 'Statistics', 3, 1),
(201, 2, 'English Literature', 4, 2),
(301, 3, 'World History', 4, 3);

-- Insert sample data into Students
INSERT INTO Students (StudentID, Name, Email, DepartmentID) VALUES
(1001, 'Alice Johnson', 'alicejohnson@example.com', 1),
(1002, 'Bob Lee', 'boblee@example.com', 2),
(1003, 'Charlie Davis', 'charliedavis@example.com', 3);

-- Insert sample data into StudentCourseEnrollments
INSERT INTO StudentCourseEnrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
(1, 1001, 101, '2023-09-01'),
(2, 1001, 102, '2023-09-01'),
(3, 1002, 201, '2023-09-01'),
(4, 1003, 301, '2023-09-01');
