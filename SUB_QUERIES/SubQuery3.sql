USE REVIEW5;

--[ 3 ] Select the name and salary of all employees who make more than the average salary of their department:
SELECT NAME,SALARY,DEPARTMENT
FROM EMPLOYEE_DATA A
WHERE SALARY>(SELECT AVG(SALARY) FROM EMPLOYEE_DATA WHERE DEPARTMENT=A.DEPARTMENT);