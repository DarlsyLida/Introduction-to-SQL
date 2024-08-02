
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


SELECT *
FROM Employees e1
WHERE Salary > (SELECT AVG(Salary)
                FROM Employees e2
                WHERE e2.DepartmentID = e1.DepartmentID);

SELECT DepartmentID, DepartmentName
FROM Departments d
WHERE EXISTS (SELECT 1
              FROM Employees e
              WHERE e.DepartmentID = d.DepartmentID);


