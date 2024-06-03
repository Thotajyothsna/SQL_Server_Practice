
--Creating trigger that backup to emp_trigger_table ,the records inserted into employee_details table
CREATE TRIGGER MyDML_Trigger_before
on employee_details
after insert
as
begin
declare @EMP_ID INT,
@NAME VARCHAR(25),
@EMAIL VARCHAR(30);
insert into EMP_TRIGGER_TABLE(emp_id,name,email)
select emp_id,name,email from inserted i;
end

insert into Employee_Details(name,email)
values('jayem','jayam,@email.com');

select * from EMP_TRIGGER_TABLE;

select * from Employee_Details;