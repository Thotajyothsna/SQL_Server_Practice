--Declaring Variable,setting value and printing
DECLARE @package decimal;
SET @package=600000;
PRINT @package;

SELECT *
FROM Employee_Details
WHERE Package>@package;

