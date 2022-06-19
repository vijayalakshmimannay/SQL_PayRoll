/*----UC1---*/
CREATE DATABASE PayRoll;
use PayRoll;

/*----UC2----*/
Create Table Employee_Payroll
(ID INT IDENTITY(1,1) PRIMARY KEY(ID),
NAME VARCHAR(150),
SALARY FLOAT,
START DATE);

/*----UC3----*/
INSERT INTO employee_payroll( NAME, SALARY, START ) VALUES
( 'VIJAYA', 2000000.00, '2021-05-12' ),
( 'HARSHA', 4000000.00, '2021-06-13' ),
( 'AARNA', 300000.00, '2021-07-14' );

/*-----UC4----*/
SELECT *from Employee_Payroll;

/*----UC5-----*/
SELECT SALARY FROM employee_payroll WHERE NAME = 'VIJAYA';

/*-----UC6-----*/
ALTER TABLE Employee_Payroll ADD gender CHAR(1) CHECK (Gender IN ('M','F'));

UPDATE employee_payroll set gender =
'F' where name = 'VIJAYA' or id =
3;
UPDATE employee_payroll set gender =
'm' where name = 'HARSHA' or id =
2;

/*-----UC7-----*/
SELECT SUM(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY gender;
SELECT AVG(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY gender;
SELECT MIN(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY gender;
SELECT MAX(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY gender;
SELECT COUNT(salary) FROM Employee_Payroll WHERE gender = 'F' GROUP BY gender;