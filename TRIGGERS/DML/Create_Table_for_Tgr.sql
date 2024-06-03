--Creating another table to record the actions that were taking place in employee_details table
CREATE TABLE TGR_INS_DEL
(
EMP_ID INT,
NAME VARCHAR(25),
EMAIL VARCHAR(30),
GENDER CHAR(1),
INS_OR_DEL_TIME DATETIME,
ACTION VARCHAR(15)
);