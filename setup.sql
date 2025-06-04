DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name TEXT
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name TEXT,
    DepartmentID INT,
    Salary REAL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments VALUES
(1, 'Marketing'),
(2, 'Research'),
(3, 'Development');

INSERT INTO Employees VALUES
(1, 'John Doe', 1, 60000),
(2, 'Jane Smith', 1, 70000),
(3, 'Alice Johnson', 1, 65000),
(4, 'Bob Brown', 1, 75000),
(5, 'Charlie Wilson', 1, 80000),
(6, 'Eva Lee', 2, 70000),
(7, 'Michael Clark', 2, 75000),
(8, 'Sarah Davis', 2, 80000),
(9, 'Ryan Harris', 2, 85000),
(10, 'Emily White', 2, 90000),
(11, 'David Martinez', 3, 95000),
(12, 'Jessica Taylor', 3, 100000),
(13, 'William Rodriguez', 3, 105000);
