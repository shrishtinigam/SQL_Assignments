CREATE TABLE SALESMAN_20BRS1193 (SALESMAN_ID INT PRIMARY KEY, NAME VARCHAR2(20), CITY VARCHAR2(20), COMMISSION INT);
CREATE TABLE CUSTOMER_20BRS1193 (CUSTOMER_ID INT PRIMARY KEY, CUST_NAME VARCHAR2(20), CITY VARCHAR2(20), GRADE INT, SALESMAN_ID INT, CONSTRAINT FK_G1 FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN_20BRS1193(SALESMAN_ID));
CREATE TABLE ORDERS_20BRS1193 (ORDER_NO INT PRIMARY KEY, ORDER_AMT INT, ORDER_DATE DATE, CUST_ID INT, SALESMAN_ID INT, CONSTRAINT FK_G2 FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER_20BRS1193(CUSTOMER_ID), CONSTRAINT FK_G3 FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN_20BRS1193(SALESMAN_ID));

INSERT ALL 
	INTO SALESMAN_20BRS1193 VALUES (101, 'Jason', 'London', 9)
	INTO SALESMAN_20BRS1193 VALUES (102, 'Lily', 'Rome', 11)
	INTO SALESMAN_20BRS1193 VALUES (103, 'Sterling', 'Paris', 14)
	INTO SALESMAN_20BRS1193 VALUES (104, 'Jenna', 'Tokyo', 13)
	INTO SALESMAN_20BRS1193 VALUES (105, 'Kevin', 'Tokyo', 10)
	INTO SALESMAN_20BRS1193 VALUES (106, 'Iris',  'New York City', 12)
	INTO SALESMAN_20BRS1193 VALUES (107, 'Pete', 'Paris', 15)
	INTO SALESMAN_20BRS1193 VALUES (108, 'Kate', 'Singapore', 17)
	INTO SALESMAN_20BRS1193 VALUES (109, 'John', 'London', 21)
	INTO SALESMAN_20BRS1193 VALUES (110, 'Rosa', 'Moscow', 8)
SELECT * FROM DUAL;


INSERT ALL 
	INTO CUSTOMER_20BRS1193 VALUES (503, 'Tanisha', 'Moscow', 500, 110)
	INTO CUSTOMER_20BRS1193 VALUES (506, 'Shaun', 'London', 170, 101)
	INTO CUSTOMER_20BRS1193 VALUES (501, 'Rachel', 'Paris', 345, 103)
	INTO CUSTOMER_20BRS1193 VALUES (518, 'Hazel', 'Paris', 270, 108)
	INTO CUSTOMER_20BRS1193 VALUES (522, 'Percy', 'Moscow', 270, 102)
	INTO CUSTOMER_20BRS1193 VALUES (508, 'Pedro', 'New York City', 370, 106)
	INTO CUSTOMER_20BRS1193 VALUES (511, 'Anna', 'Tokyo',220, 105)
	INTO CUSTOMER_20BRS1193 VALUES (502, 'Thomas', 'Rome', 600, 102)
	INTO CUSTOMER_20BRS1193 VALUES (520, 'Jake', 'New York City', 470, 109)
	INTO CUSTOMER_20BRS1193 VALUES (507, 'Amelia', 'Singapore', 620, 108)
	INTO CUSTOMER_20BRS1193 VALUES (512, 'Sebastian', 'London', 400, 109)
	INTO CUSTOMER_20BRS1193 VALUES (504, 'Ben', 'Tokyo', 120, 104)
	INTO CUSTOMER_20BRS1193 VALUES (510, 'Niall', 'Paris', 470, 107)
	INTO CUSTOMER_20BRS1193 VALUES (519, 'Martin', 'Tokyo', 120, 106)
	INTO CUSTOMER_20BRS1193 VALUES (505, 'Marcia', 'London', 580, 109)
	INTO CUSTOMER_20BRS1193 VALUES (509, 'Tom', 'Paris', 270, 107)
	INTO CUSTOMER_20BRS1193 VALUES (513, 'Matthew', 'Tokyo', 120, 105)
	INTO CUSTOMER_20BRS1193 VALUES (521, 'Tina', 'Singapore', 540, 110)
	INTO CUSTOMER_20BRS1193 VALUES (516, 'Lauren', 'New York City', 170, 106)
	INTO CUSTOMER_20BRS1193 VALUES (515, 'Leo', 'Singapore', 180, 108)
	INTO CUSTOMER_20BRS1193 VALUES (514, 'Martina', 'Moscow', 470, 110)
	INTO CUSTOMER_20BRS1193 VALUES (517, 'Alex', 'London', 210, 104)
SELECT * FROM DUAL;


INSERT ALL 
	INTO ORDERS_20BRS1193 VALUES (1001, 530, '06-Sep-2021', 508, 106)
	INTO ORDERS_20BRS1193 VALUES (1002, 200, '08-Sep-2021', 503, 110)
	INTO ORDERS_20BRS1193 VALUES (1003, 3500, '13-Sep-2021', 506, 101)
	INTO ORDERS_20BRS1193 VALUES (1004, 840, '09-Sep-2021', 505, 109)
	INTO ORDERS_20BRS1193 VALUES (1005, 490, '17-Sep-2021', 502, 102)
	INTO ORDERS_20BRS1193 VALUES (1006, 1300, '04-Sep-2021', 507, 108)
	INTO ORDERS_20BRS1193 VALUES (1007, 2500, '14-Sep-2021', 505, 109)
	INTO ORDERS_20BRS1193 VALUES (1008, 1060, '18-Sep-2021', 510, 107)
	INTO ORDERS_20BRS1193 VALUES (1009, 3800, '10-Sep-2021', 504, 104)
	INTO ORDERS_20BRS1193 VALUES (1010, 230, '05-Sep-2021', 511, 105)	
	INTO ORDERS_20BRS1193 VALUES (1011, 120, '04-Sep-2021', 505, 109)
	INTO ORDERS_20BRS1193 VALUES (1012, 1960, '15-Sep-2021', 501, 103)
	INTO ORDERS_20BRS1193 VALUES (1013, 2350, '15-Sep-2021', 509, 107)
	INTO ORDERS_20BRS1193 VALUES (1014, 2000, '11-Sep-2021', 508, 106)
	INTO ORDERS_20BRS1193 VALUES (1015, 2830, '07-Sep-2021', 512, 109)
	INTO ORDERS_20BRS1193 VALUES (1016, 1240, '16-Sep-2021', 508, 106)
	INTO ORDERS_20BRS1193 VALUES (1017, 6200, '12-Sep-2021', 510, 107)
	INTO ORDERS_20BRS1193 VALUES (1018, 320, '11-Sep-2021', 505, 109)
	INTO ORDERS_20BRS1193 VALUES (1019, 1220, '07-Sep-2021', 511, 105)
	INTO ORDERS_20BRS1193 VALUES (1020, 560, '02-Sep-2021', 503, 110)
	INTO ORDERS_20BRS1193 VALUES (1021, 700, '12-Sep-2021', 510, 107)
	INTO ORDERS_20BRS1193 VALUES (1022, 2900, '11-Sep-2021', 516, 106)
	INTO ORDERS_20BRS1193 VALUES (1023, 4800, '07-Sep-2021', 515, 108)
	INTO ORDERS_20BRS1193 VALUES (1024, 1070, '16-Sep-2021', 513, 105)
	INTO ORDERS_20BRS1193 VALUES (1025, 1000, '19-Sep-2021', 514, 110)
	INTO ORDERS_20BRS1193 VALUES (1026, 880, '11-Sep-2021', 513, 105)
	INTO ORDERS_20BRS1193 VALUES (1027, 5000, '07-Sep-2021', 514, 110)
	INTO ORDERS_20BRS1193 VALUES (1028, 460, '16-Sep-2021', 516, 106)
	INTO ORDERS_20BRS1193 VALUES (1029, 3800, '12-Sep-2021', 516, 106)
	INTO ORDERS_20BRS1193 VALUES (1030, 2800, '12-Sep-2021', 517, 104)  
	INTO ORDERS_20BRS1193 VALUES (1031, 2200, '25-Sep-2021', 518, 108)
	INTO ORDERS_20BRS1193 VALUES (1032, 3120, '24-Sep-2021', 520, 109)
	INTO ORDERS_20BRS1193 VALUES (1033, 2720, '07-Sep-2021', 520, 109)
	INTO ORDERS_20BRS1193 VALUES (1034, 530, '16-Sep-2021', 521, 110)
	INTO ORDERS_20BRS1193 VALUES (1035, 7010, '12-Sep-2021', 517, 104)
	INTO ORDERS_20BRS1193 VALUES (1036, 2900, '11-Sep-2021', 519, 106)
	INTO ORDERS_20BRS1193 VALUES (1037, 400, '07-Sep-2021', 522, 102)
	INTO ORDERS_20BRS1193 VALUES (1038, 1070, '16-Sep-2021', 520, 109)
	INTO ORDERS_20BRS1193 VALUES (1039, 1000, '12-Sep-2021', 519, 106)
	INTO ORDERS_20BRS1193 VALUES (1040, 840, '01-Sep-2021', 518, 108)
	INTO ORDERS_20BRS1193 VALUES (1041, 500, '17-Sep-2021', 522, 102)
	INTO ORDERS_20BRS1193 VALUES (1042, 460, '12-Sep-2021', 519, 106)
SELECT * FROM DUAL;



SELECT SALESMAN_20BRS1193.NAME AS SALESMAN, CUSTOMER_20BRS1193.CUST_NAME, CUSTOMER_20BRS1193.CITY FROM CUSTOMER_20BRS1193 INNER JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE SALESMAN_20BRS1193.CITY = CUSTOMER_20BRS1193.CITY;
SELECT ORDERS_20BRS1193.ORDER_NO, ORDERS_20BRS1193.ORDER_AMT, CUSTOMER_20BRS1193.CUST_NAME, CUSTOMER_20BRS1193.CITY AS CUST_CITY FROM CUSTOMER_20BRS1193 INNER JOIN ORDERS_20BRS1193 ON CUSTOMER_20BRS1193.CUSTOMER_ID = ORDERS_20BRS1193.CUST_ID WHERE ORDERS_20BRS1193.ORDER_AMT BETWEEN 500 AND 2000 ORDER BY CUSTOMER_20BRS1193.CUST_NAME;
SELECT CUSTOMER_20BRS1193.CUST_NAME, SALESMAN_20BRS1193.NAME AS SALESMAN FROM CUSTOMER_20BRS1193 INNER JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID ORDER BY CUSTOMER_20BRS1193.CUST_NAME;
SELECT CUSTOMER_20BRS1193.CUST_NAME, SALESMAN_20BRS1193.NAME AS SALESMAN, SALESMAN_20BRS1193.COMMISSION FROM CUSTOMER_20BRS1193 INNER JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE SALESMAN_20BRS1193.COMMISSION > 12 ORDER BY SALESMAN_20BRS1193.COMMISSION;
SELECT SALESMAN_20BRS1193.NAME AS SALESMAN, CUSTOMER_20BRS1193.CUST_NAME, CUSTOMER_20BRS1193.CITY FROM CUSTOMER_20BRS1193 INNER JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE SALESMAN_20BRS1193.CITY != CUSTOMER_20BRS1193.CITY AND SALESMAN_20BRS1193.COMMISSION > 12;

SELECT ORDERS_20BRS1193.ORDER_NO, ORDERS_20BRS1193.ORDER_AMT, ORDERS_20BRS1193.ORDER_DATE, CUSTOMER_20BRS1193.CUST_NAME, SALESMAN_20BRS1193.NAME AS SALESMAN, SALESMAN_20BRS1193.COMMISSION FROM (ORDERS_20BRS1193 INNER JOIN CUSTOMER_20BRS1193 ON CUSTOMER_20BRS1193.CUSTOMER_ID = ORDERS_20BRS1193.CUST_ID) JOIN SALESMAN_20BRS1193 ON ORDERS_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID ORDER BY ORDERS_20BRS1193.ORDER_NO;
SELECT ORDERS_20BRS1193.ORDER_NO, ORDERS_20BRS1193.ORDER_AMT, ORDERS_20BRS1193.ORDER_DATE, CUSTOMER_20BRS1193.CUST_NAME, CUSTOMER_20BRS1193.CUSTOMER_ID, CUSTOMER_20BRS1193.GRADE, SALESMAN_20BRS1193.NAME AS SALESMAN, SALESMAN_20BRS1193.SALESMAN_ID, SALESMAN_20BRS1193.COMMISSION FROM (ORDERS_20BRS1193 INNER JOIN CUSTOMER_20BRS1193 ON CUSTOMER_20BRS1193.CUSTOMER_ID = ORDERS_20BRS1193.CUST_ID) JOIN SALESMAN_20BRS1193 ON ORDERS_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID ORDER BY ORDERS_20BRS1193.ORDER_NO;
SELECT CUSTOMER_20BRS1193.CUST_NAME, SALESMAN_20BRS1193.NAME AS SALESMAN FROM CUSTOMER_20BRS1193 LEFT JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID ORDER BY CUSTOMER_20BRS1193.CUST_NAME;
SELECT CUSTOMER_20BRS1193.CUST_NAME, SALESMAN_20BRS1193.NAME AS SALESMAN FROM CUSTOMER_20BRS1193 LEFT JOIN SALESMAN_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE CUSTOMER_20BRS1193.GRADE < 300 ORDER BY CUSTOMER_20BRS1193.CUST_NAME;
SELECT DISTINCT SALESMAN_20BRS1193.NAME AS SALESMAN FROM SALESMAN_20BRS1193 INNER JOIN CUSTOMER_20BRS1193 ON CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE EXISTS (SELECT 1 FROM CUSTOMER_20BRS1193 WHERE CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID) ORDER BY SALESMAN_20BRS1193.NAME;

SELECT DISTINCT SALESMAN_20BRS1193.NAME AS SALESMAN FROM (ORDERS_20BRS1193 INNER JOIN CUSTOMER_20BRS1193 ON CUSTOMER_20BRS1193.CUSTOMER_ID = ORDERS_20BRS1193.CUST_ID) JOIN SALESMAN_20BRS1193 ON ORDERS_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID WHERE EXISTS (SELECT 1 FROM CUSTOMER_20BRS1193 WHERE CUSTOMER_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID) AND EXISTS (SELECT 0 FROM ORDERS_20BRS1193 WHERE ORDERS_20BRS1193.SALESMAN_ID = SALESMAN_20BRS1193.SALESMAN_ID) ORDER BY SALESMAN_20BRS1193.NAME;
SELECT SALESMAN_20BRS1193.NAME AS SALESMAN, CUSTOMER_20BRS1193.CUST_NAME FROM CUSTOMER_20BRS1193, SALESMAN_20BRS1193;

DROP TABLE ORDERS_20BRS1193;
DROP TABLE CUSTOMER_20BRS1193;
DROP TABLE SALESMAN_20BRS1193;