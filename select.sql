
SELECT * FROM Student;

SELECT * FROM Courses;

SELECT * FROM Student 
WHERE Email = 'alice.wonderland@university.com';


SELECT c.CourseName, c.CourseCode
FROM Courses AS c
JOIN Instructors AS i ON c.InstructorId = i.Id
WHERE i.FirstName = 'John' AND i.LastName = 'Smith';


SELECT s.FirstName, s.LastName
FROM Student AS s
JOIN Enrollment AS e ON s.Id = e.StudentId
JOIN Courses AS c ON e.CourseId = c.Id
WHERE c.CourseCode = 'CS101';

SELECT
    c.CourseName, 
    i.FirstName ||' ' || i.LastName AS InstructorName
FROM Enrollment AS e
JOIN Student AS s ON e.StudentId = s.Id
JOIN Courses AS c ON e.CourseId = c.Id
JOIN Instructors AS i ON c.InstructorId = i.Id
WHERE s.FirstName = 'Alice' AND s.LastName = 'Wonderland';


SELECT COUNT(*) AS EnrolledStudents
FROM Enrollment AS e
JOIN Courses AS c ON e.CourseId = c.Id
WHERE c.CourseCode = 'CS101';


SELECT 
    c.CourseCode, 
    c.CourseName, 
    COUNT(e.StudentId ) AS EnrolledStudents
FROM Courses AS c
LEFT JOIN Enrollment AS e ON c.Id = e.CourseId
GROUP BY c.CourseCode, c.CourseName;
