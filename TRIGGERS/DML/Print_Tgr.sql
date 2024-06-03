--DML TRIGGERS CREATION 
CREATE TRIGGER MyDML_trigger1
on employee_details
after insert
as
begin
print 'New record inserted';
end

select * from Employee_Details

insert into Employee_Details(dateofbirth,gender,name,email)
values('2001-12-04','M','rajesh','rajesh@email.com'),
('2002-09-12','F','saraswathi','saraswathi@email.com');

insert into Employee_Details (name,gender,Email)
values('Kathyayini','F','kathya@email.com');