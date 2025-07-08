
UPDATE Courses
SET InstructorId = (
    SELECT Id
    FROM Instructors
    WHERE FirstName = 'Jane' AND LastName = 'Doe'
)
WHERE CourseCode = 'CS101';

DELETE FROM Student
WHERE FirstName = 'Charlie' AND LastName = 'Chaplin';
