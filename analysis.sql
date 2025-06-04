WITH DeptStats AS (
    SELECT 
        e.DepartmentID,
        d.Name AS DepartmentName,
        AVG(e.Salary) AS AverageSalary,
        COUNT(*) AS NumberOfEmployees
    FROM Employees e
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
    GROUP BY e.DepartmentID, d.Name
),
OverallAvg AS (
    SELECT AVG(Salary) AS OverallAverageSalary
    FROM Employees
)
SELECT 
    ds.AverageSalary,
    ds.NumberOfEmployees
FROM DeptStats ds, OverallAvg oa
WHERE ds.AverageSalary > oa.OverallAverageSalary;
