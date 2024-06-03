/*to list all salespersons along with customer name, city, grade, order number, date, and amount. 
1. Salesmen who works for one or more customer*/

SELECT *
FROM SALESMAN S JOIN CUSTOMERS C ON C.Salesman_ID=S.Salesman_ID
JOIN ORDERS O ON O.customer_id=C.Cust_ID
ORDER BY s.Salesman_ID;

-- 2. Salesmen who not yet join under any customer
SELECT *
FROM SALESMAN S 
LEFT JOIN CUSTOMERS C ON S.Salesman_ID=C.Salesman_ID
WHERE S.Salesman_ID NOT IN (SELECT DISTINCT Salesman_ID FROM CUSTOMERS)

--3. selecting list of customer placed one or more orders,WITH NO OF ORDERS
SELECT  Cust_ID,Cust_Name,C.City,C.GRADE,COUNT(O.ord_no) AS NO_OF_ORDERS
FROM ORDERS O JOIN CUSTOMERS C ON C.Cust_ID=O.customer_id
GROUP BY Cust_ID,Cust_Name,C.City,C.GRADE

--4. selecting list of customer no order placed to their salesman.
SELECT *
FROM CUSTOMERS C JOIN SALESMAN S ON C.Salesman_ID=S.Salesman_ID
WHERE Cust_ID NOT IN (SELECT DISTINCT customer_id FROM ORDERS)