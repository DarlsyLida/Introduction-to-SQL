use dataanalytics;

SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.departmentID;



SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, 
Projects.ProjectID, Projects.ProjectName
FROM Employees
CROSS JOIN Projects;
