--creating stored procedure for While loop
ALTER PROC spWhileLoopBreak
(
@COUNT INT
)
AS
WHILE (@COUNT>0)
	BEGIN
		IF(@COUNT==4)
		BEGIN
			BREAK;
		END
		SELECT * FROM Employee_Details WHERE EMP_ID=@COUNT;
		SET @COUNT=@COUNT-1;
	END

--EXECUTING STORED PROCEDURE
EXEC spWhileLoopBreak 6;