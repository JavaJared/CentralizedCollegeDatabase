-- Create roles for different types of users
CREATE ROLE ReadOnly;
CREATE ROLE DataEntry;
CREATE ROLE Admin;

-- Grant permissions to ReadOnly role
GRANT SELECT ON Departments TO ReadOnly;
GRANT SELECT ON Courses TO ReadOnly;
GRANT SELECT ON Instructors TO ReadOnly;
GRANT SELECT ON Students TO ReadOnly;
GRANT SELECT ON StudentCourseEnrollments TO ReadOnly;

-- Grant permissions to DataEntry role
GRANT SELECT, INSERT, UPDATE ON Departments TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON Courses TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON Instructors TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON Students TO DataEntry;
GRANT SELECT, INSERT, UPDATE ON StudentCourseEnrollments TO DataEntry;

-- Grant all privileges to Admin role
GRANT ALL PRIVILEGES ON Departments TO Admin;
GRANT ALL PRIVILEGES ON Courses TO Admin;
GRANT ALL PRIVILEGES ON Instructors TO Admin;
GRANT ALL PRIVILEGES ON Students TO Admin;
GRANT ALL PRIVILEGES ON StudentCourseEnrollments TO Admin;

-- Example of assigning a user to a role
-- ALTER USER example_user_name SET ROLE ReadOnly;
