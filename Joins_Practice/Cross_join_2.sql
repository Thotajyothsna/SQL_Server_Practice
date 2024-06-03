/*to create a Cartesian product between salesperson and customer, 
i.e. each salesperson will appear for every customer and 
vice versa for those salesmen who belong to a city
and customers who require a grade.*/
SELECT *
FROM SALESMAN AS S ,CUSTOMERS AS C
WHERE C.City=S.city AND GRADE IS NOT NULL;