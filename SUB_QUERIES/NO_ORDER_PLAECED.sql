/*to generate a report with customer name, city, order number, order date, 
 order amount, salesperson name, and commission
 to determine if any of the existing customers have not placed orders or 
 if they have placed orders through their salesman or by themselves.*/
 SELECT *
 FROM CUSTOMERS 
 WHERE Cust_ID NOT IN (SELECT DISTINCT customer_id FROM ORDERS);

 --CUSTOMER WHO NOT PLACED ANY ORDER 
 SELECT Cust_Name,C.City AS CUST_CITY,S.name AS SALESMAN, commission
 FROM CUSTOMERS C JOIN SALESMAN S ON C.Salesman_ID=S.Salesman_ID
 WHERE Cust_ID NOT IN (SELECT DISTINCT customer_id FROM ORDERS);