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
( 'VIJAYA', 2000000.00, '2022-05-12' ),
( 'HARSHA', 4000000.00, '2022-06-13' ),
( 'AARNA', 300000.00, '2022-07-14' ),
( 'LOKESH', 500000.00, '2022-08-05' ),
( 'TARUN', 700000.00, '2022-09-12' );


/*-----UC4----*/
SELECT *from Employee_Payroll;

/*----UC5-----*/
SELECT SALARY FROM employee_payroll WHERE NAME = 'VIJAYA';
SELECT * FROM EMPLOYEE_PAYROLL WHERE START BETWEEN '2022-05-12' AND CURRENT_TIMESTAMP

/*-----UC6-----*/
ALTER TABLE Employee_Payroll ADD GENDER VARCHAR(10) NULL
UPDATE Employee_Payroll SET GENDER = 'F' WHERE NAME = 'VIJAYA'
UPDATE Employee_Payroll SET GENDER = 'F' WHERE NAME = 'AARNA'
UPDATE Employee_Payroll SET GENDER = 'M' WHERE NAME = 'HARSHA'
UPDATE Employee_Payroll SET GENDER = 'M' WHERE NAME = 'LOKESH'
UPDATE Employee_Payroll SET GENDER = 'M' WHERE NAME = 'TARUN'

/*-----UC7-----*/
SELECT GENDER, SUM(SALARY) AS SUM_SALARY FROM Employee_Payroll GROUP BY GENDER
SELECT GENDER, MIN(SALARY) AS MIN_SALARY FROM Employee_Payroll GROUP BY GENDER
SELECT GENDER, MAX(SALARY) AS MAX_SALARY FROM Employee_Payroll GROUP BY GENDER
SELECT GENDER, AVG(SALARY) AS AVG_SALARY FROM Employee_Payroll GROUP BY GENDER
SELECT GENDER, COUNT(GENDER) AS EMPLOYEE_COUNT FROM Employee_Payroll GROUP BY GENDER

/*-----UC8-----*/
ALTER TABLE Employee_Payroll ADD PHONENO DECIMAL NOT NULL DEFAULT(0)
UPDATE Employee_Payroll SET PHONENO = 9553956406 WHERE NAME = 'VIJAYA'
UPDATE Employee_Payroll SET PHONENO = 9291261367 WHERE NAME = 'HARSHA'
UPDATE Employee_Payroll SET PHONENO = 9966506088 WHERE NAME = 'AARNA'
UPDATE Employee_Payroll SET PHONENO = 8553945306 WHERE NAME = 'LOKESH'
UPDATE Employee_Payroll SET PHONENO = 9556748709 WHERE NAME = 'TARUN'

ALTER TABLE Employee_Payroll ADD ADDRESS VARCHAR(100) NOT NULL DEFAULT(''), DEPARTMENT VARCHAR(50) NOT NULL DEFAULT('')
UPDATE Employee_Payroll SET ADDRESS = 'VIZAG',DEPARTMENT = 'SOFTWARE' WHERE NAME = 'VJAYA'
UPDATE Employee_Payroll SET ADDRESS = 'HYDERABAD',DEPARTMENT = 'Administration' WHERE NAME = 'HARSHA'
UPDATE Employee_Payroll SET ADDRESS = 'BANGLORE',DEPARTMENT = 'PRODUCTION' WHERE NAME = 'AARNA'
UPDATE Employee_Payroll SET ADDRESS = 'KARNATAKA',DEPARTMENT = 'CIVIL' WHERE NAME = 'LOKESH'
UPDATE Employee_Payroll SET ADDRESS = 'CHENNAI',DEPARTMENT = 'MECHANICAL' WHERE NAME = 'TARUN'

/*-----UC9-----*/
ALTER TABLE Employee_Payroll ADD BASIC_PAY FLOAT NOT NULL DEFAULT(0), DEDUCTIONS FLOAT NOT NULL DEFAULT(0),
TAXABLE_PAY FLOAT NOT NULL DEFAULT(0), NET_PAY FLOAT NOT NULL DEFAULT(0)
UPDATE Employee_Payroll SET BASIC_PAY = 20000,DEDUCTIONS = 200,TAXABLE_PAY = 200,NET_PAY = 18600 WHERE ID = 1
UPDATE Employee_Payroll SET BASIC_PAY = 30000,DEDUCTIONS = 200,TAXABLE_PAY = 200,NET_PAY = 28600 WHERE ID = 2
UPDATE Employee_Payroll SET BASIC_PAY = 40000,DEDUCTIONS = 200,TAXABLE_PAY = 200,NET_PAY = 38600 WHERE ID = 3
UPDATE Employee_Payroll SET BASIC_PAY = 60000,DEDUCTIONS = 200,TAXABLE_PAY = 200,NET_PAY = 58600 WHERE ID = 4
UPDATE Employee_Payroll SET BASIC_PAY = 70000,DEDUCTIONS = 200,TAXABLE_PAY = 200,NET_PAY = 68600 WHERE ID = 5

/*-----UC10-----*/
INSERT INTO Employee_Payroll VALUES('Terisa',25000,'2022-01-01','F',9966507077,'Banglore','Sales&Marketing',15000,200,200,14600)

UPDATE Employee_Payroll SET NAME = 'Terissa' WHERE ID = 5

select *from Employee_Payroll;