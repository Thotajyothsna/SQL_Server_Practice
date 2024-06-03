/*to find those customers with a grade less than 300.
Return cust_name, customer city, grade, Salesman, salesmancity.
The result should be ordered by ascending customer_id. */
SELECT CUST_NAME,C.CITY AS CUSTOMER_CITY,GRADE,S.NAME AS SALESMAN,S.CITY AS SALESMAN_CITY
FROM CUSTOMERS AS C LEFT JOIN SALESMAN AS S
ON S.Salesman_ID=C.Salesman_ID
WHERE GRADE<300;

 