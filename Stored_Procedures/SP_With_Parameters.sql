--Creating stored procedure spRetrieveWithCondition with parameters
CREATE PROC spRetrieveWithCondition
@salary DECIMAL(10,2),
@ID1 INT,
@ID2 INT
AS
BEGIN 
SELECT * FROM Employee_Details WHERE Monthly_Salary>@salary AND EMP_ID BETWEEN @ID1 AND @ID2;
END

EXEC spRetrieveWithCondition @ID1=3,@ID2=8,@SALARY=50000;
EXEC spRetrieveWithCondition 60000,4,7;