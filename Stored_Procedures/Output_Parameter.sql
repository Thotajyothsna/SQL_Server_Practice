--Creating output parameter in stored procedure
CREATE proc spGetNoOfRecords
(
@package decimal,
@records_count int OUTPUT
)
AS
BEGIN
SELECT *
FROM Employee_Details
WHERE Package>@package;

SELECT @records_count=@@ROWCOUNT;
END


--Executing stored procedure which gives output
DECLARE @CNT INT;
EXEC spGetNoOfRecords 600000,@RECORDS_COUNT=@CNT OUTPUT;
SELECT @CNT AS 'No Of Records'; 