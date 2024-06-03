--Creating stored procedure having variables,setting a field to it and then printing
CREATE PROC spGetAllNamesToVariable
(
@PACKAGE DECIMAL
)
AS
BEGIN
DECLARE @AllEmpNames VARCHAR(MAX);
SET @AllEmpNames='';

SELECT @AllEmpNames=@AllEmpNames+NAME+CHAR(10)
FROM Employee_Details
WHERE PACKAGE>@PACKAGE;

PRINT @AllEmpNames;
END

exec spGetAllNamesToVariable 600000;