use dataanalytics;

alter table employees 
add Salary int;

-- Disable safe update mode for the current session
SET SQL_SAFE_UPDATES = 0;

-- Update the Salary column with random values
UPDATE Employees
SET Salary = ROUND(RAND() * (80000 - 40000) + 40000, 2);

-- Re-enable safe update mode for the current session
SET SQL_SAFE_UPDATES = 1;



SELECT DepartmentName,
(SELECT COUNT(*)
FROM Employees
WHERE Employees.DepartmentID = Departments.DepartmentID) AS EmployeeCount
FROM Departments;


SELECT *
FROM Employees
WHERE Salary = (SELECT MAX(Salary)
FROM Employees AS e
WHERE e.DepartmentID = Employees.DepartmentID);




SELECT DepartmentID, AverageSalary
FROM (SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID) AS AvgSalaries
WHERE AverageSalary > 50000;

SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID

