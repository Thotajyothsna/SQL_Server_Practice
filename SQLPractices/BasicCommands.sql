create table employeedetails
(Name varchar(10),ID varchar(6),Department Varchar(10),Salary int);

alter table employeedetails alter column Department varchar(10);

Insert into employeedetails
values('Ravi','SQ1234','.NET',50000);

Insert into employeedetails
values('Ram','SQ1000','Nodejs',40000),('lakshman','SQ0002','SAP',80000),('madhav','SQ0108','AI',70000);

select * from employeedetails;

Insert into employeedetails
values('Ram nari','SQ2658','.NET',50000);

update employeedetails 
set department='web'
where department='.NET';

update employeedetails set Salary=30000 where Department='.NET';

create table Interns(Name nvarchar,ID char(8),CourseName nvarchar,Stipend smallmoney,Joiningdate date);

select * from Interns;

alter table Interns
alter column Name varchar(20);

alter table interns 
alter column Coursename varchar(20);

insert into Interns
values('Arjun','IT123','Frontend',15000,'2024-05-15');

insert into interns 
values
('Krishna','IT12345','FullStack',20000,'2024-01-01');

insert into interns
values
('Shyam','IT3456','Backened',18000,'2024-02-01'),
('hari Narayan','IT0108','Data Science',22000,'2024-03-10'),
('Govind','IT0016','Devops',19000,'2024-04-20'),
('Jagannath','IT1000','python',12000,'2023-09-25'),
('Manohar','IT0005','Javascript',13000,'2023-12-23');

exec sp_rename 'intERns.name' , 'InternName', 'COLUMN';

delete from Interns where internname='Arjun';

update Interns
set ID='IT0001'
where internname='krishna';

alter table interns
add duration_months tinyint;

update Interns
set duration_months=6 where CourseName='FullStack';

update Interns
set duration_months=4 where Coursename='Frontened';

update interns
set duration_months=5 where duration_months is NULL;

create table details(name varchar(20),city varchar(15));

insert into details
values ('Narayan','Uttarpradesh'),
('Purushottham','Delhi'),
('Balaji','Tirupati'),
('Anand','Kerala');

select * from Interns;

truncate table details;

select * from userdeatails;