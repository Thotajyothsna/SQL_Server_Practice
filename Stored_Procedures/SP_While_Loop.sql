--creating stored procedure for While loop
CREATE PROC spWhileLoop
(
@COUNT INT
)
AS
WHILE (@COUNT>0)
	BEGIN
		SELECT * FROM Employee_Details WHERE EMP_ID=@COUNT;
		SET @COUNT=@COUNT-1;
	END

--EXECUTING STORED PROCEDURE
EXEC spWhileLoop 6;