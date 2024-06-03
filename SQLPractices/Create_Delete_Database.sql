
--creating a database  
create database Deleting_database;

--using the database Deleting_database
use Deleting_database;

/*Creating table with name del_table and columns or attributes as 
name with datatype variable lenght characters of size 10 
age with datatype tiny int which stores the range of values 0-255
*/
create table del_table
(name varchar(10),age tinyint);

--inserting three records into del_table table
insert into del_table
values('me',22),
('you',6),
('he',12);

--Deleting database named Deleting_database  IF EXISTS and no no error if not exists
drop database IF EXISTS Deleting_database;