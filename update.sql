use dataanalytics;

UPDATE Employees SET LastName = 'Ndegwa' WHERE EmployeeID = 1;
UPDATE Projects SET ProjectName = 'Project Z' WHERE ProjectID = 1005;

select * from employees;

DELETE FROM projects WHERE projectID = 1009;
select * from projects;


-- (11, 'Kiplagat', 'Kosgey', 104, '2024-01-01');
insert into Employees(employeeID, FirstName, LastName, DepartmentID, HireDate)
values (11, 'Kiplagat', 'Kosgey', 104, '2024-01-01');

insert into Employees(employeeID, FirstName, LastName, DepartmentID, HireDate)
values (12, 'Darlsy', 'Lida', 102, '2024-01-01');

ALTER TABLE Employees ADD Email VARCHAR(100);
select * from employees;
ALTER TABLE employees DROP COLUMN Email;
select * from employees;


SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;
