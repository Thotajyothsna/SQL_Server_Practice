--USING SQLSERVERPRACTICE DATABASE
USE SqlServerPractice;

--CREATING TABLES NAMED SALES WITH ATTRIBUTES SALES_PERSON,PRODUCT-NAME,SALES_AMOUNT
CREATE TABLE SALES
(Sales_Person varchar(25) NOT NULL,
Product_Name varchar(20),
Sales_Amount Decimal(10,2) NOT NULL);

--INSERTING RECORDS INTO SALES TABLE
INSERT INTO SALES
VALUES
('Raju','Pulses',200000),
('Suresh','Rice',10000),
('madhu','Shampoo',30000),
('Raju','dresses',450000),
('madhu','ghee',600000),
('Pavani','sweets',50000),
('suresh','Garments',340000),
('Pavani','woolsweaters',500000),
('Raju','laptops',2000000),
('jagadeesh','tablets',500000);


--SELECTING ALL THE COLUMNS OF TABLE SALES
SELECT * FROM SALES;

--GETTING SALES_AMOUNT GROUPING BY SALES_PERSON
--gIVES EACH SALES_PERSON ALONG WITH HIS TOTAL SALES AMOUNT
SELECT Sales_Person,SUM(Sales_Amount)
FROM SALES
GROUP BY Sales_Person;


--
SELECT  TOP 2 *
FROM SALES

SELECT *
FROM SALES
ORDER BY Sales_Amount
OFFSET 3 ROWS
FETCH FIRST 4 ROWS ONLY;

SELECT  * 
FROM SALES
ORDER BY Sales_Amount
OFFSET (COUNT(SALES_AMOUNT)-2) ROWS
FETCH FIRST 2 ROWS ONLY;

