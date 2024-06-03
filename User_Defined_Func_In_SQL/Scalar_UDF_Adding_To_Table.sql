--Creating User Defined Function SalaryHike 
CREATE FUNCTION SalaryHike(@salary decimal,@hike_percent TINYINT)
returns decimal
AS
BEGIN
RETURN (@salary+(@salary*@hike_percent/100));
END

--calling function salaryhike
SELECT DBO.SALARYHIKE(400000,25);

--retrieving data from Employee_Details by adding UDF 'salaryhike' as column to each row
SELECT *,DBO.SALARYHIKE(PACKAGE,30) AS CURRENT_SALARY_AFTER_HIKE
FROM Employee_Details;