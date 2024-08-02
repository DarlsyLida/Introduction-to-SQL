use dataanalytics;

SELECT SUM(Salary) AS TotalSalary
FROM Employees2;

SELECT AVG(Salary) AS AVGSalary
FROM Employees2;

-- Find the latest hire date for each department
SELECT DepartmentID, MAX(HireDate) AS LatestHireDate
FROM Employees
GROUP BY DepartmentID;

-- Filtering
SELECT * FROM Employees2
WHERE Salary > 70000;

-- Select the DepartmentID and the count of employees for each department
SELECT DepartmentID, COUNT(*) AS EmployeeCount
-- From the Employees table
FROM Employees
-- Group the results by DepartmentID
GROUP BY DepartmentID
-- Only include groups where the count of employees is greater than 5
HAVING COUNT(*) >= 2;

use dataanalytics;

SELECT * FROM Employees2
WHERE Department = 'HR' OR Salary >= 70000;

-- Select employees who do not work in department 101.
SELECT * FROM Employees2
WHERE NOT Department = 'HR';



SELECT * FROM Employees
WHERE DepartmentID IN (101, 102, 103);

SELECT * FROM Employees
WHERE Salary BETWEEN 60000 AND 70000;

-- begin with J
SELECT * FROM Employees2
WHERE Name LIKE 'J%';

-- end with e
SELECT * FROM Employees2
WHERE Name LIKE '%e';

SELECT * FROM Employees2
WHERE Name LIKE '%ac%';


ALTER TABLE Employees
ADD Salary DECIMAL(10, 2);

-- Disable safe update mode for the current session
SET SQL_SAFE_UPDATES = 0;

-- Update the Salary column with random values
UPDATE Employees
SET Salary = ROUND(RAND() * (80000 - 40000) + 40000, 2);

-- Re-enable safe update mode for the current session
SET SQL_SAFE_UPDATES = 1;





