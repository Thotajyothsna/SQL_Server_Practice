--Sorting based on name in ascending order
SELECT *
FROM Employee_Details
ORDER BY Name ASC;

--Sorting based on DATEOFBIRTH in descending order
SELECT *
FROM Employee_Details
ORDER BY DateOfBirth DESC;

--sorting based on package in descending and then name to ascending
SELECT *
FROM Employee_Details
ORDER BY Package DESC, Name ASC;

--sorting gender in ascending and then name to ascending 
SELECT *
FROM Employee_Details
ORDER BY Gender ASC, Name ASC

--sorting gender in ascending, then package descending, and again name to ascending 
SELECT *
FROM Employee_Details
ORDER BY Gender ASC, Package DESC, Name ASC;

--sorting Emp_ID in ascending.
SELECT *
FROM Team_Leaders
ORDER BY Emp_ID ASC;


--sorting emp_ID in descending and then team_name in ascending
SELECT *
FROM Team_Leaders
ORDER BY Emp_ID DESC,Team_Name;