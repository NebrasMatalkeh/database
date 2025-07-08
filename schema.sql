--CREATE DATABASE UniversityDB;


CREATE TABLE Student (
    Id SERIAL PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(200) NOT NULL,
    EnrollmentDate TIMESTAMP NOT NULL
);


CREATE TABLE Instructors (
    Id SERIAL PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(200) NOT NULL
);


CREATE TABLE Courses (
    Id SERIAL PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(50) NOT NULL, 
    InstructorId INT REFERENCES Instructors(Id)
);


CREATE TABLE Enrollment (
    StudentId INT REFERENCES Student(Id),
    CourseId INT REFERENCES Courses(Id),
    Grade VARCHAR(50),
    PRIMARY KEY (StudentId, CourseId)
);
