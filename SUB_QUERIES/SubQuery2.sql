USE REVIEW5;

/* [ 2 ] Select the name and age of all employees who work in the same department
as the employee named "John Smith":*/
SELECT NAME,AGE,DEPARTMENT
FROM Employee_DATA
WHERE DEPARTMENT=(SELECT DEPARTMENT FROM EMPLOYEE_DATA WHERE NAME='JSON');

