CREATE TABLE Student (
    Sid INT PRIMARY KEY,
    PhoneNumber VARCHAR(15),
    StudentID VARCHAR(20),
    Grades VARCHAR(5),
    Name VARCHAR(100),
    InternshipDetails TEXT,
    FieldTrainingStatus VARCHAR(50)
);

CREATE TABLE Internship (
    Intern_ID INT PRIMARY KEY,
    Semester VARCHAR(20),
    Rep_ID INT,
    Coord_ID INT,
    Org_ID INT,
    S_ID INT,
    FOREIGN KEY (S_ID) REFERENCES Student(Sid)
);

CREATE TABLE Organization (
    Org_ID INT PRIMARY KEY,
    ProfileInfo TEXT,
    Name VARCHAR(100),
    NumberOfStudents INT,
    ApprovalStatus VARCHAR(50)
);
CREATE TABLE InternshipCoordinator (
    Coordinate_ID INT PRIMARY KEY,
    Assigned_Grades VARCHAR(5),
    Name VARCHAR(100),
    Assigned_Organization INT,
    FOREIGN KEY (Assigned_Organization) REFERENCES Organization(Org_ID)
);
CREATE TABLE Report (
    Report_ID INT PRIMARY KEY,
    Internship_ID INT,
    Semester VARCHAR(20),
    WeeklySummary TEXT,
    StudentRegistration TEXT,
    OrganizationAssignment TEXT,
    EndOfSemesterSummary TEXT,
    FOREIGN KEY (Internship_ID) REFERENCES Internship(Intern_ID)
);

INSERT INTO Student (Sid, PhoneNumber, StudentID, Grades, Name, InternshipDetails, FieldTrainingStatus)
VALUES 
(1, '1234567890', 'STU001', 'A', 'mohamed', 'Software Development Intern', 'Completed'),
(2, '9876543210', 'STU002', 'B', 'badee', 'Marketing Intern', 'In Progress');

INSERT INTO Organization (Org_ID, ProfileInfo, Name, NumberOfStudents, ApprovalStatus)
VALUES 
(1, 'Tech Company specializing in AI', 'TechCorp', 10, 'Approved'),
(2, 'Marketing Firm', 'MarketInc', 5, 'Pending');

INSERT INTO InternshipCoordinator (Coordinate_ID, Assigned_Grades, Name, Assigned_Organization)
VALUES 
(1, 'A', 'Dr. joumana', 1),
(2, 'B', 'Prof. wazzan', 2);

INSERT INTO Internship (Intern_ID, Semester, Rep_ID, Coord_ID, Org_ID, S_ID)
VALUES 
(1, 'Fall 2024', 1001, 1, 1, 1),
(2, 'Spring 2024', 1002, 2, 2, 2);


INSERT INTO Report (Report_ID, Internship_ID, Semester, WeeklySummary, StudentRegistration, OrganizationAssignment, EndOfSemesterSummary)
VALUES 
(1, 1, 'Fall 2024', 'Week 1- Software Basics', 'Registered', 'Assigned to TechCorp', 'Successfully completed'),
(2, 2, 'Spring 2024', 'Week 1- Introduction to Marketing', 'Registered', 'Assigned to MarketInc', 'In progress');