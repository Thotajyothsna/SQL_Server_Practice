/* to find those orders where the order amount exists between 500 and 2000. 
 Return ord_no, purch_amt, cust_name, city.*/
 SELECT ORD_NO,PURCH_AMT,CUST_NAME,CITY
 FROM ORDERS AS O JOIN CUSTOMERS AS C
 ON O.CUSTOMER_ID=C.Cust_ID
 WHERE PURCH_AMT BETWEEN 500 AND 2000;

/*to find the details of an order.
Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission*/
 SELECT O.ord_no, O.ord_date, O.purch_amt,
       C.cust_name AS "Customer Name", C.grade, 
       S.name AS "Salesman", S.commission 
FROM ORDERS AS O JOIN CUSTOMERS AS C ON O.CUSTOMER_ID=C.Cust_ID
JOIN SALESMAN AS S ON S.Salesman_ID=C.Salesman_ID;

