-- Query to find all courses offered by the Department of Mathematics
SELECT c.CourseID, c.Title, c.Credits
FROM Courses c
JOIN Departments d ON c.DepartmentID = d.DepartmentID
WHERE d.Name = 'Department of Mathematics';

-- Query to find the instructor for a specific course (e.g., Calculus)
SELECT i.Name AS InstructorName, i.Email
FROM Instructors i
JOIN Courses c ON i.InstructorID = c.InstructorID
WHERE c.Title = 'Calculus';

-- Query to list all students enrolled in a specific course (e.g., Calculus)
SELECT s.StudentID, s.Name, s.Email
FROM Students s
JOIN StudentCourseEnrollments sce ON s.StudentID = sce.StudentID
JOIN Courses c ON sce.CourseID = c.CourseID
WHERE c.Title = 'Calculus';

-- Query to find all courses a specific student (e.g., Alice Johnson) is enrolled in
SELECT c.CourseID, c.Title, c.Credits
FROM Courses c
JOIN StudentCourseEnrollments sce ON c.CourseID = sce.CourseID
JOIN Students s ON sce.StudentID = s.StudentID
WHERE s.Name = 'Alice Johnson';

-- Query to add a new student to the database
-- INSERT INTO Students (StudentID, Name, Email, DepartmentID) VALUES (1004, 'Diana Prince', 'dianaprince@example.com', 1);

-- Query to enroll a student in a course
-- INSERT INTO StudentCourseEnrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES (5, 1004, 102, '2023-10-01');
