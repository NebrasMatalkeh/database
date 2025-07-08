INSERT INTO Instructors (Id, FirstName, LastName, Email)
VALUES 
(1, 'John', 'Smith', 'john.smith@university.com'),
(2, 'Jane', 'Doe', 'jane.doe@university.com');


INSERT INTO Student (Id, FirstName, LastName, Email, EnrollmentDate)
VALUES 
(1, 'Alice', 'Wonderland', 'alice.wonderland@university.com', '2025-07-08'),
(2, 'Bob', 'Builder', 'bob.builder@university.com', '2025-07-08'),
(3, 'Charlie', 'Chaplin', 'charlie.builder@university.com', '2025-07-08');


INSERT INTO Courses (Id, CourseName, CourseCode, InstructorId)
VALUES
(1, 'Introduction to C#', 'CS101', 1),
(2, 'Calculus II', 'MA203', 2),
(3, 'Database Systems', 'DB301', 1),
(4, 'Linear Algebra', 'MA205', 2);


INSERT INTO Enrollment (StudentId, CourseId, Grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B+'),
(2, 1, 'B'),
(3, 3, 'A-'),
(3, 4, 'C');

