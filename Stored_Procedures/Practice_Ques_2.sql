/*Problem: Create a stored procedure 
that inserts a new record into a 'Customers' table
with the provided name, email, and phone number.*/
CREATE PROC spInsertRecord
(
@name varchar(25),
@email varchar(25),
@phone_number DECIMAL
)
AS
BEGIN
	INSERT INTO Employee_Details(NAME,EMAIL,PHONE_NUMBER)
	VALUES(@NAME,@EMAIL,@phone_number);
END

EXEC spInsertRecord 'Harshini','harshini@email.com',1234567890;
EXEC spInsertRecord @PHONE_NUMBER=0467893210,@EMAIL='ARUNA@EMAIL.COM',@NAME='Aruna';