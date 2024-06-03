--Creating stored procedure to insert data into Employee_Details
alter PROC spInsertData
(
	@name varchar(20),
	@gender varchar(1) ,
	@dateOfBirth date,
	@package decimal(10,2),
	@email varchar(25),
	@Address varchar(50)='Bangalore'
)
AS
BEGIN

INSERT INTO Employee_Details(NAME,GENDER,DateOfBirth,Package,Email,Address)
VALUES(@name,@gender,@dateOfBirth,@package,@email,@Address);

END

EXEC spInsertData 'Vishnu','M','2000-08-24','900000','vishnu@email.com'