--creating stored procudure NAMED spRetrieveData
CREATE PROCEDURE spRetrieveData
AS 
BEGIN
SELECT * FROM Employee_Details;
END

--THREE DIFFERENT WAYS OF EXECUTING STORED PROCEDURES
spRetrieveData;
EXEC spRetrieveData;
EXECUTE spRetrieveData;

--Modifying the stored Procedure spRetrieveData
ALTER PROCEDURE spRetrieveData
AS 
BEGIN
SELECT * FROM Employee_Details WHERE NAME LIKE '%AM%';
END

