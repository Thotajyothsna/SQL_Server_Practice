--creating stored procedure spGetDataWithID
CREATE PROC spGetDataWithID
@EMP_ID INT
AS
BEGIN
SELECT * FROM Employee_Details WHERE EMP_ID=@EMP_ID;
END

EXEC spGetDataWithID 7;

--Altering spGetDataWithID to have defualt id if not given by user
alter PROC spGetDataWithID
@EMP_ID INT=5
AS
BEGIN
SELECT * FROM Employee_Details WHERE EMP_ID=@EMP_ID;
END

--gives details of employee with id=5
EXEC spGetDataWithID


--gives details of employee with id=8
EXEC spGetDataWithID 8;


