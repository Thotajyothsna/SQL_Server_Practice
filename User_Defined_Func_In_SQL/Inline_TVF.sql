--Creating Table Valued Function
alter FUNCTION CURRENTSALARY(@HIKE_PERC TINYINT)
RETURNS table
AS
return SELECT *,(PACkage+package*@HIKE_PERC/100) as salary_after_hike from Employee_Details;

--Executing Table Valued Function which returns table data
select * from dbo.currentsalary(30);

--Executing TVF retriving only requird fields from the returned TABLE
select name,Dateofbirth,gender,salary_after_hike
from dbo.currentsalary(25);