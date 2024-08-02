-- Syntax
-- Joins a table with itself
SELECT a.column1, b.column2
FROM table_name a, table_name b
WHERE a.common_field = b.common_field;


-- Selects pairs of employees working in the same department
SELECT A.EmployeeID AS EmployeeID1, A.FirstName AS FirstName1, A.LastName AS LastName1,
       B.EmployeeID AS EmployeeID2, B.FirstName AS FirstName2, B.LastName AS LastName2
FROM Employees A
JOIN Employees B ON A.DepartmentID = B.DepartmentID
WHERE A.EmployeeID < B.EmployeeID;



SELECT SUM(Salary) AS TotalSalary
FROM Employees;



SELECT AVG(Salary) AS AverageSalary
FROM Employees;

SELECT MIN(Salary) AS MinimumSalary
FROM Employees;

SELECT MAX(Salary) AS MaximumSalary
FROM Employees;

SELECT COUNT(*) AS EmployeeCount
FROM Employees;



-- Count the number of employees in each department.
SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;

-- Finda the latest hire date for each department
SELECT DepartmentID, MAX(HireDate) AS LatestHireDate
FROM Employees
GROUP BY DepartmentID;


-- Select the DepartmentID and the total number of projects for each department
SELECT E.DepartmentID, COUNT(DISTINCT A.ProjectID) AS ProjectCount
FROM Employees E
JOIN Assignments A ON E.EmployeeID = A.EmployeeID
GROUP BY E.DepartmentID;



SELECT * FROM Employees
WHERE Salary > 50000;

-- Select employees who work in department 101 and have a salary greater than 50000.
SELECT * FROM Employees
WHERE DepartmentID = 101 AND Salary > 50000;


-- Select employees who work in department 101 or have a salary greater than 50000.

SELECT * FROM Employees
WHERE DepartmentID = 101 OR Salary > 50000;


-- Select employees who do not work in department 101.
SELECT * FROM Employees
WHERE NOT DepartmentID = 101;


SELECT * FROM Employees
WHERE DepartmentID IN (101, 102, 103);



SELECT * FROM Employees
WHERE DepartmentID IN (101, 102, 103);


SELECT * FROM Employees
WHERE Salary BETWEEN 40000 AND 60000;


-- begin with J
SELECT * FROM Employees
WHERE FirstName LIKE 'J%';

-- Select employees with last names ending in 'son':
SELECT * FROM Employees
WHERE LastName LIKE '%son';

-- Select employees with first names containing 'an'
SELECT * FROM Employees
WHERE FirstName LIKE '%an%';


-- Select the DepartmentID and the count of employees for each department
SELECT DepartmentID, COUNT(*) AS EmployeeCount
-- From the Employees table
FROM Employees
-- Group the results by DepartmentID
GROUP BY DepartmentID
-- Only include groups where the count of employees is greater than 5
HAVING COUNT(*) > 5;



-- Select the DepartmentID and the average salary for each department
SELECT DepartmentID, AVG(Salary) AS AverageSalary
-- From the Employees table
FROM Employees
-- Group the results by DepartmentID
GROUP BY DepartmentID
-- Only include groups where the count of employees is greater than 5
HAVING COUNT(*) > 5;


-- Select the DepartmentID and the total salary for each department
SELECT DepartmentID, SUM(Salary) AS TotalSalary
-- From the Employees table
FROM Employees
-- Group the results by DepartmentID
GROUP BY DepartmentID
-- Only include groups where the sum of salaries is greater than 100,000
HAVING SUM(Salary) > 100000;
