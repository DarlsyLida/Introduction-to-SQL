CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    HireDate DATE
);



CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    StartDate DATE
);

CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectID INT,
    Role VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);





SELECT * FROM Employees;
SELECT FirstName, LastName FROM Employees WHERE DepartmentID = 102;
SELECT ProjectName FROM Projects WHERE StartDate > '2023-05-01';


UPDATE Employees SET LastName = 'Ndegwa' WHERE EmployeeID = 1;
UPDATE Projects SET ProjectName = 'Project Z' WHERE ProjectID = 1005;


DELETE FROM Employees WHERE EmployeeID = 10;
DELETE FROM Assignments WHERE AssignmentID = 5;


INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate) VALUES
(11, 'Kiplagat', 'Kosgey', 104, '2024-01-01');
INSERT INTO Projects (ProjectID, ProjectName, StartDate) VALUES
(1011, 'Project K', '2023-11-01');



ALTER DATABASE CompanyDB MODIFY NAME = CompanyDatabase;

ALTER TABLE Employees ADD Email VARCHAR(100);
ALTER TABLE Departments DROP COLUMN Location;

DROP TABLE Offices;


CREATE INDEX idx_lastname ON Employees (LastName);



DROP INDEX idx_lastname ON Employees;


SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;


SELECT DepartmentID, AVG(HireDate) AS AverageHireDate
FROM Employees
GROUP BY DepartmentID;

