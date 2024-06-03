--Updating the address field
CREATE PROC spUpdateAddress
@address varchar(50)
AS
BEGIN
UPDATE Employee_Details
SET Address=@address
WHERE Address IS NULL;
END

--Executing stored procedure spUpdateAddress
EXEC spUpdateAddress 'TIRUPATI';