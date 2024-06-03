/*Problem: Create a stored procedure that retrieves all records from a 'Orders' table
where the sale date is between the provided start and end dates.*/
CREATE PROC spDatesRange
(
@STARTDATE DATE,
@ENDDATE DATE
)
AS
BEGIN 
	SELECT * FROM ORDERS WHERE ORD_DATE BETWEEN @STARTDATE AND @ENDDATE;
END

EXEC spDatesRange '2023-12-20','2024-03-10';
EXEC spDatesRange @ENDDATE='2024-03-10', @STARTDATE='2023-12-20';