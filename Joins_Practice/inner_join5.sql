--CUSTOMERS PLACED ORDER WHO IS NOT IN THE LIST
SELECT DISTINCT O.customer_id
FROM ORDERS O
EXCEPT SELECT CUST_ID FROM CUSTOMERS

/*-- to generate a report with the customer name, city, order no. order date, purchase amount
for only those customers on the list 
who must have a grade and placed one or more orders*/
SELECT *
FROM ORDERS O JOIN CUSTOMERS C ON C.Cust_ID=O.customer_id
WHERE GRADE IS NOT NULL
