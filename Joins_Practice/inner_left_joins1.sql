USE SQLSERVERPRACTICE
SELECT * FROM SALESMAN;

SELECT * FROM CUSTOMERS;




-- to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
SELECT S.name AS SALESMAN_NAME,Cust_Name,S.city,commission
FROM SALESMAN S LEFT JOIN CUSTOMERS C 
ON S.Salesman_ID=C.Salesman_ID
ORDER BY S.Salesman_ID;

 --to find salespeople who received commissions of more than 12 percent from the company. 
 --Return Customer Name, customer city, Salesman, commission.  
 SELECT S.NAME AS SALESMAN,C.CUST_NAME,C.CITY AS CUSTOMER_CITY,COMMISSION
 FROM SALESMAN S LEFT JOIN CUSTOMERS C ON  S.SALESMAN_ID=C.SALESMAN_ID
 WHERE COMMISSION>0.12;

 /*to find those customers with a grade less than 300.
Return cust_name, customer city, grade, Salesman, salesmancity.
The result should be ordered by ascending customer_id. */
SELECT CUST_NAME,C.CITY AS CUSTOMER_CITY,GRADE,S.NAME AS SALESMAN,S.CITY AS SALESMAN_CITY
FROM CUSTOMERS AS C LEFT JOIN SALESMAN AS S
ON S.Salesman_ID=C.Salesman_ID
WHERE GRADE<300;

