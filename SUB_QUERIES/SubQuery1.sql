-- [ 1 ] Select the name and salary of the employee with the highest salary:
SELECT Name,Monthly_Salary
FROM Employee_Details
WHERE Monthly_Salary=(SELECT MAX(Monthly_Salary) FROM Employee_Details)

