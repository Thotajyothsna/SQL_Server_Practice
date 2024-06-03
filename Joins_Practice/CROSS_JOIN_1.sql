
--to combine each row of the salesman table with each row of the customer table.
SELECT * 
FROM SALESMAN,CUSTOMERS;

/*to create a Cartesian product between salesperson and customer, 
i.e. each salesperson will appear for all customers
and vice versa for that salesperson who belongs to that city.*/
SELECT *
FROM SALESMAN AS S,CUSTOMERS AS C
WHERE S.CITY=C.CITY;

