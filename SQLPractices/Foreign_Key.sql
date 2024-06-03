--using SqlServaerPractice database whatever the changes we do will apply to this database
--and able to access all the tables present in this database
use SqlServerPractice;

--Displays tables present in the database we are currently working or using
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE';

/*Creating table team_Leaders with attributes Emp_ID referencing Emp_ID column in Employee_Details table
referencial actions like 
ON UPDATE CASCADE(when we update parent table i.e employee_Details then Team_Leaders table gets updated)
ON DELETE NO ACTION(When we delete any row that is referenced by Team_Leader data then it will not delete and show error message)*/
CREATE TABLE Team_Leaders
(Emp_ID INT NOT NULL,
Project_ID varchar(5),
Team_Name varchar(25) NOT NULL, 
CONSTRAINT foreign_key FOREIGN KEY(Emp_ID)
REFERENCES Employee_Details(Emp_ID)
ON UPDATE CASCADE
ON DELETE NO ACTION
);

--Inserting values into Team_Leader table
INSERT INTO Team_Leaders
(Emp_ID,Team_Name,Project_ID)
VALUES
(1,'Software Ninjas','P1001'),
(9,'Innovators','P0900'),
(6,'Code Crushers','P1020');

--Gives error when trying to insert Emp_ID which is not present in Employee_Details table
INSERT INTO Team_Leaders
VALUES (25,'P1030','Techies');


SELECT * FROM Team_Leaders;

SELECT * FROM Employee_Details;

--Gives error because identity column cannot be updated
UPDATE Employee_Details
SET EMP_ID=19
WHERE EMP_ID=6;

--GIVES ERROR
--Won,t delate this record with Emp_ID=6 because it was referenced by Team_Leader table
--AND we have given referencial action ON DELETE NO ACTION
DELETE Employee_Details
WHERE EMP_ID=6;

--Deletes the record because Emp-ID=11 is not present in child table(Team_Leader)
DELETE Employee_Details
WHERE EMP_ID=11;