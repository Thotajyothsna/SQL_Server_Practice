SELECT * FROM ORDERS;
SELECT * FROM SALESMAN;
SELECT * FROM CUSTOMERS;

-- to find the details of an order.
--Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
SELECT ORD_NO,ord_date,purch_amt,Cust_Name,GRADE,S.NAME AS SALESMAN,commission
FROM ORDERS O 
LEFT JOIN CUSTOMERS C ON O.customer_id=C.Cust_ID
JOIN SALESMAN S ON C.Salesman_ID=S.Salesman_ID;

 /*to make a report with customer name, city, order number, order date, and order amount
 in ascending order according to the order date 
 to determine whether any of the existing customers have placed an order or not.*/
 SELECT Cust_Name,CITY,ord_no,ord_date,purch_amt
 FROM CUSTOMERS C JOIN ORDERS O ON C.Cust_ID=O.customer_id
 ORDER BY ord_date;


 
