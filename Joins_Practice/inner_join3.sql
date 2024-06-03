USE SqlServerPractice;

/*locate those salespeople who do not live in the same city where their customers live 
and have received a commission of more than 12% from the company.
Return Customer Name, customer city, Salesman, salesman city, commission.*/  
SELECT CUST_NAME,C.CITY AS CUSTOMER_CITY,S.NAME AS SALESMAN,S.CITY AS SALESMAN_CITY,COMMISSION
FROM SALESMAN AS S JOIN CUSTOMERS AS C ON C.Salesman_ID=S.Salesman_ID
WHERE C.CITY!=S.CITY;

 /*to display the customer name, customer city, grade, salesman, salesman city.
 The results should be sorted by ascending customer_id.  */
 SELECT C.CUST_NAME,C.CITY AS CUSTOMER_CITY,GRADE,S.NAME AS SALESMAN,S.CITY AS SALESMAN_CITY
 FROM CUSTOMERS AS C JOIN SALESMAN AS S
 ON C.Salesman_ID=S.Salesman_ID
 ORDER BY Cust_ID;