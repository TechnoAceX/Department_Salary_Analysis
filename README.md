# Departmental Average Salary Analysis with Threshold

This project analyzes employee salary data by department and filters departments whose average salary exceeds the overall average across all departments.

## Files

- `setup.sql`: Creates tables and inserts data.
- `analysis_query.sql`: Executes the required SQL query.

## How to Run

1. Open `employee_salary.db` in VS Code using the SQLite extension.
2. Run the contents of `setup.sql` to create and populate tables.
3. Run `analysis_query.sql` to view the result.

## Expected Output

| Department Name | Average Salary | Number of Employees |
|-----------------|----------------|----------------------|
| Development     | 100000.00      | 3                    |
