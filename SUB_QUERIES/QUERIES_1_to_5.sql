-- [ 1 ]to find those employees who receive a higher salary than the employee with ID 163.
--Return first name, last name.
SELECT FIRST_NAME,LAST_NAME
FROM employees
WHERE SALARY > (SELECT SALARY FROM employees WHERE EMPLOYEE_ID=163);

--[ 2 ] to find out which employees have the same designation as the employee whose ID is 169. 
--Return first name, last name, department ID and job ID.
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,DEPARTMENT_ID,JOB_ID
FROM employees
WHERE JOB_ID=(SELECT JOB_ID FROM employees WHERE EMPLOYEE_ID=169);

--[ 3 ] to find those employees whose salary matches the lowest salary of any of the departments.
--Return first name, last name and department ID.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY
FROM employees
WHERE SALARY IN (SELECT MIN(SALARY) FROM employees GROUP BY DEPARTMENT_ID);

-- [ 4 ] to find those employees who earn more than the average salary.
--Return employee ID, first name, last name.
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM employees
WHERE SALARY>(SELECT AVG(SALARY) FROM employees);

-- [ 5 ] to find those employees who report to that manager whose first name is ‘Payam’. 
--Return first name, last name, employee ID and salary.
SELECT FIRST_NAME,LAST_NAME,EMPLOYEE_ID,SALARY,MANAGER_ID
FROM employees 
WHERE MANAGER_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE FIRST_NAME='PAYAM');