USE REVIEW5;

/* [ 4 ] Select the name and age of all employees
who work in departments with at least one employee who is over the age of 50*/
SELECT NAME,AGE,DEPARTMENT
FROM EMPLOYEE_DATA
WHERE AGE>50;