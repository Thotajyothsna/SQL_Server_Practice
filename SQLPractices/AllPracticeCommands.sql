CREATE DATABASE SqlServerPractice;

USE SqlServerPractice;


CREATE TABLE Employee_Details(
EMP_ID int Primary Key IDENTITY,
First_Name varchar(20) NOT NULL,
Gender varchar(1) constraint Gender_check CHECK (Gender IN ('F','M')),
DateOfBirth Date CHECK (DateOfBirth < GETDATE()),
Package decimal(10,2) CHECK (package>0),
Email varchar(25) Unique,
Monthly_Salary AS (Package/12) PERSISTED 
);

INSERT INTO Employee_Details
values
--('Ramya','F','2002-05-05',700000,'Ramya@email.com'),
('Raj', 'M', '1985-03-25', 600000.00, 'raj@example.com'),
('Priya', 'F', '1990-07-15', 650000.00, 'priya@example.com'),
('Vikram', 'M', '1975-12-20', 800000.00, 'vikram@example.com'),
('Sunita', 'F', '1995-09-08', 600000.00, 'sunita@example.com'),
('Arjun', 'M', '1980-02-17', 750000.00, 'arjun@example.com'),
('Neha', 'F', '1993-04-12', 650000.00, 'neha@example.com');

INSERT INTO Employee_Details
(NAME,GENDER,DATEOFBIRTH,EMAIL,PACKAGE)
VALUES
('Vara','F','2000-10-07','vara@email.com',400000),
('Venkat','M','1999-05-25','Venkat@gmail.com',450000),
('Suresh','M','2001-03-14','Suresh@email.com',600000),
('Pavani','F','2001-08-28','pavani@gmail.com',500000),
('Chaithanya','M','2000-08-12','chaithu@email.com',900000),
('Durga','F','2002-03-07','durga@gmail.com',400000);

select * from Employee_Details

SELECT Emp_Id,DateOfBirth,Monthly_Salary
FROM Employee_Details;

SELECT * FROM Employee_Details;

create database Deleting_database;

use Deleting_database;

create table del_table
(name varchar(10),age tinyint);

insert into del_table
values('me',22),
('you',6),
('he',12);

drop database IF EXISTS Deleting_database;

drop database IF EXISTS SqlServerPractice;

alter database SqlServerPracice Modify name=SqlServerPractice;

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE';

SELECT Package
FROM Employee_Details;

EXEC sp_rename 'Employee_Details.First_Name' , 'Name' , 'COLUMN' ;

SELECT * 
FROM Employee_Details
WHERE DateOfBirth>'1985-01-01'
ORDER BY DateOfBirth DESC;

SELECT Package,COUNT(*)
FROM Employee_Details
GROUP BY Package;

SELECT Gender,COUNT(*)
FROM Employee_Details
WHERE DateOfBirth BETWEEN '1990-01-01' AND GETDATE()
GROUP BY Gender;

SELECT * 
FROM Employee_Details
ORDER BY DateOfBirth 
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;

SELECT TOP 3 *
FROM Employee_Details
ORDER BY Package;

SELECT TOP 3 WITH TIES *
FROM Employee_Details
ORDER BY Package;

SELECT TOP 3 PERCENT *
FROM Employee_Details
ORDER BY Package;

SELECT TOP 3 PERCENT WITH TIES *
FROM Employee_Details
ORDER BY Package;

SELECT DISTINCT GENDER
FROM Employee_Details;

SELECT DISTINCT PACKAGE,GENDER
FROM Employee_Details
ORDER BY PACKAGE DESC;

SELECT *
FROM Employee_Details
WHERE PACKAGE > =650000
ORDER BY NAME;

SELECT *
FROM Employee_Details
WHERE NAME LIKE '%AM%';

SELECT *
FROM Employee_Details
WHERE NAME LIKE '%RA%';

SELECT * 
FROM Employee_Details
WHERE GENDER='F' AND PACKAGE>650000;

SELECT * 
FROM Employee_Details
WHERE GENDER='F' OR PACKAGE>750000;

SELECT NAME+'('+ GENDER+')' AS NAME_GEN
FROM Employee_Details;