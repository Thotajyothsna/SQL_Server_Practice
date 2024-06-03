--List of salesman whos  customer may have placed, either one or more orders
--on or above order amount 2000 and must have a grade, 
SELECT S.Salesman_ID,S.NAME AS SALESMAN,C.Cust_ID,C.Cust_Name,SUM(O.purch_amt)
FROM SALESMAN S JOIN CUSTOMERS C ON S.Salesman_ID=C.Salesman_ID
JOIN ORDERS O ON C.Cust_ID=O.customer_id
WHERE GRADE IS NOT NULL
GROUP BY S.Salesman_ID,S.NAME,C.Cust_ID,C.Cust_Name
HAVING SUM(O.purch_amt)>2000 ;

--USING JOINS AS WELL AS SUB QUERY
--List of salesman whos  customer may have placed, either one or more orders
--on or above order amount 2000 and must have a grade, 
SELECT S.Salesman_ID,S.name,C.Cust_ID,Cust_Name,GRADE
FROM SALESMAN S JOIN CUSTOMERS C ON C.Salesman_ID=S.Salesman_ID
WHERE C.Cust_ID IN 
		(SELECT Cust_ID FROM CUSTOMERS C JOIN ORDERS O ON C.Cust_ID=O.customer_id
		 WHERE GRADE IS NOT NULL
		 GROUP BY Cust_ID
		 HAVING SUM(purch_amt)>2000)