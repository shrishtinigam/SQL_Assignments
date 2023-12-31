CREATE TABLE EMP_20BRS1193 (EMPLOYEEID INT PRIMARY KEY, FIRSTNAME VARCHAR2(10), LASTNAME VARCHAR2(10), SALARY INT, JOINDATE DATE, DEPARTMENT VARCHAR(10), GENDER VARCHAR2(10));
INSERT ALL 
	INTO EMP_20BRS1193 VALUES (1, 'Sriram', 'Kumar', 60000, '01-Dec-2013', 'IT', 'Male' )
	INTO EMP_20BRS1193 VALUES (2, 'Shanthi', 'Devi', 50000, '10-Oct-2014', 'HR', 'Female')
	INTO EMP_20BRS1193 VALUES (3, 'Sham', 'Sundar', 100000, '20-Dec-2014', 'IT', 'Male')
	INTO EMP_20BRS1193 VALUES (4, 'Ram', 'Kishan', 43000, '20-Dec-2014', 'HR','Male')
	INTO EMP_20BRS1193 VALUES (5, 'Rahul', 'Dravid', 83000, '20-Dec-2014', 'Payroll', 'Male')
	INTO EMP_20BRS1193 VALUES (6, 'Mahesh', 'Kumar', 35000, '20-Dec-2014', 'HR', 'Male')
SELECT * FROM DUAL;
CREATE TABLE PROJECT_20BRS1193 (PROJECTID INT PRIMARY KEY, EMPLOYEEID INT, PROJECTNAME VARCHAR2(10), CONSTRAINT FK_G FOREIGN KEY (EMPLOYEEID) REFERENCES EMP_20BRS1193(EMPLOYEEID));
INSERT ALL 
	INTO PROJECT_20BRS1193 VALUES (1, 1, 'Project1')
	INTO PROJECT_20BRS1193 VALUES (2, 1, 'Project2')
	INTO PROJECT_20BRS1193 VALUES (3, 1, 'Project3')
	INTO PROJECT_20BRS1193 VALUES (4, 2, 'Project4')
	INTO PROJECT_20BRS1193 VALUES (5, 3, 'Project5')
	INTO PROJECT_20BRS1193 VALUES (6, 3, 'Project6')
	INTO PROJECT_20BRS1193 VALUES (7, 3, 'Project7')
	INTO PROJECT_20BRS1193 VALUES (8, 4, 'Project8')
	INTO PROJECT_20BRS1193 VALUES (9, 5, 'Project9')
SELECT * FROM DUAL;


DROP TABLE PROJECT_20BRS1193;
DROP TABLE EMP_20BRS1193;

SELECT FIRSTNAME, LASTNAME, PROJECTNAME AS PROJ_NAME FROM PROJECT_20BRS1193 LEFT JOIN EMP_20BRS1193 ON EMP_20BRS1193.EMPLOYEEID = PROJECT_20BRS1193.EMPLOYEEID ORDER BY FIRSTNAME;
SELECT FIRSTNAME, LASTNAME, PROJECTNAME AS PROJ_NAME FROM PROJECT_20BRS1193 RIGHT JOIN EMP_20BRS1193 ON EMP_20BRS1193.EMPLOYEEID = PROJECT_20BRS1193.EMPLOYEEID ORDER BY FIRSTNAME;
SELECT FIRSTNAME, LASTNAME, NVL(PROJECTNAME, 'No Project Assigned') AS PROJ_NAME FROM PROJECT_20BRS1193 RIGHT JOIN EMP_20BRS1193 ON EMP_20BRS1193.EMPLOYEEID = PROJECT_20BRS1193.EMPLOYEEID ORDER BY FIRSTNAME;
SELECT COUNT(*) FROM EMP_20BRS1193 WHERE SALARY > (SELECT AVG(SALARY) FROM EMP_20BRS1193); 
SELECT DISTINCT FIRSTNAME, LASTNAME FROM EMP_20BRS1193 E INNER JOIN PROJECT_20BRS1193 P ON E.EMPLOYEEID = P.EMPLOYEEID WHERE E.EMPLOYEEID IN (SELECT EMPLOYEEID FROM PROJECT_20BRS1193 GROUP BY EMPLOYEEID HAVING COUNT(EMPLOYEEID) > 1);
SELECT FIRSTNAME, SALARY, DEPARTMENT FROM EMP_20BRS1193 WHERE SALARY = ANY(SELECT MAX(SALARY) FROM EMP_20BRS1193 GROUP BY DEPARTMENT) ORDER BY FIRSTNAME;
SELECT * FROM EMP_20BRS1193 E WHERE JOINDATE = ANY(SELECT MIN(JOINDATE) FROM EMP_20BRS1193 WHERE E.DEPARTMENT = DEPARTMENT);








