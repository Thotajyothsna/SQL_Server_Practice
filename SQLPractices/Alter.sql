--Adding address column with default value bangalore
ALTER TABLE Employee_Details
ADD Address varchar(50) DEFAULT 'Bangalore';

--Adding Middle_Name column 
ALTER TABLE Employee_Details
ADD Middle_Name varchar(20);

--renaming Middle_Name to Last_Name 
EXEC sp_rename 'Employee_Details.Middle_Name', 'Last_Name', 'COLUMN';

--Changing Last_name data type size from 20 to 50
ALTER TABLE Employee_Details
ALTER COLUMN Last_Name varchar(50);

--renaming database
alter database SqlServerPracice Modify name=SqlServerPractice;