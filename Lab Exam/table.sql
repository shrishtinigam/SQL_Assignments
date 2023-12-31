CREATE TABLE TECHNICIAN_20BRS1193 (Technician_id INT PRIMARY KEY, First_Name VARCHAR2(25) NOT NULL, Last_Name VARCHAR2(25) NOT NULL, City VARCHAR2(25), Job VARCHAR2(25));
CREATE TABLE CUSTOMER_20BRS1193 (Cust_id INT PRIMARY KEY, Cust_Fname VARCHAR2(25) NOT NULL, Cust_Lname VARCHAR2(25) NOT NULL, FirstTime_issue VARCHAR2(25), Technician_id INT, CONSTRAINT FK_G1 FOREIGN KEY (Technician_id) REFERENCES TECHNICIAN_20BRS1193(Technician_id));
CREATE TABLE APPOINTMENT_20BRS1193 (Appointment_id INT PRIMARY KEY, Cust_id INT, Technician_id INT, Appointment_date DATE, Appt_time_hrs INT CHECK (Appt_time_hrs <= 24), Feedback VARCHAR2(50), CONSTRAINT FK_G2 FOREIGN KEY (Cust_id) REFERENCES CUSTOMER_20BRS1193(Cust_id), CONSTRAINT FK_G3 FOREIGN KEY (Technician_id) REFERENCES TECHNICIAN_20BRS1193(Technician_id));

INSERT ALL 
	INTO TECHNICIAN_20BRS1193 VALUES (101, 'Siva', 'Kumar', 'Chennai', 'Plumber')
	INTO TECHNICIAN_20BRS1193 VALUES (102, 'Kiran', 'Sharma', 'Delhi', 'Electrician')
	INTO TECHNICIAN_20BRS1193 VALUES (103, 'Ravi', 'Trivedi', 'Lucknow', 'Welder')
	INTO TECHNICIAN_20BRS1193 VALUES (104, 'Krishna', 'Rao', 'Hyderabad', 'Electrician')
SELECT * FROM DUAL;


INSERT ALL 
	INTO CUSTOMER_20BRS1193 VALUES (501, 'Sita', 'Devi', 'Yes', 101)
	INTO CUSTOMER_20BRS1193 VALUES (502, 'Dinesh', 'Kumar', 'No', 101)
	INTO CUSTOMER_20BRS1193 VALUES (503, 'Sham', 'Kumar', 'Yes', 102)
	INTO CUSTOMER_20BRS1193 VALUES (504, 'Ravi', 'Kiran', 'No', 103)
SELECT * FROM DUAL;

INSERT ALL 
	INTO APPOINTMENT_20BRS1193 VALUES (1001, 501, 101, '15-MAY-2021', 9, 'Nice')
	INTO APPOINTMENT_20BRS1193 VALUES (1002, 502, 101, '16-JUN-2021', 13, 'Nice')
	INTO APPOINTMENT_20BRS1193 VALUES (1003, 503, 102, '17-JUN-2021', 15, 'Avg')
	INTO APPOINTMENT_20BRS1193 VALUES (1004, 504, 103, '18-JUN-2021', 17, 'Poor')
SELECT * FROM DUAL;

SELECT First_Name, Job FROM TECHNICIAN_20BRS1193 WHERE Technician_id IN (SELECT Technician_id FROM CUSTOMER_20BRS1193 WHERE FirstTime_issue = 'Yes') ORDER BY First_Name;

SELECT APPOINTMENT_20BRS1193.Appointment_id, CUSTOMER_20BRS1193.Cust_Fname FROM (CUSTOMER_20BRS1193 INNER JOIN APPOINTMENT_20BRS1193 ON CUSTOMER_20BRS1193.Cust_id = APPOINTMENT_20BRS1193.Cust_id) JOIN TECHNICIAN_20BRS1193 ON APPOINTMENT_20BRS1193.Technician_id = TECHNICIAN_20BRS1193.Technician_id WHERE TECHNICIAN_20BRS1193.Job = 'Plumber';

SELECT APPOINTMENT_20BRS1193.Appointment_id, TECHNICIAN_20BRS1193.First_Name AS TECHNICIAN_FNAME FROM APPOINTMENT_20BRS1193 INNER JOIN TECHNICIAN_20BRS1193 ON APPOINTMENT_20BRS1193.Technician_id = TECHNICIAN_20BRS1193.Technician_id WHERE APPOINTMENT_20BRS1193.Feedback = 'Nice';

CREATE VIEW ELECTRICIANS AS (SELECT T.Technician_id, T.First_Name FROM TECHNICIAN_20BRS1193 T WHERE T.Job = 'Electrician');
SELECT * FROM ELECTRICIANS;

DROP TABLE APPOINTMENT_20BRS1193;
DROP TABLE CUSTOMER_20BRS1193;
DROP TABLE TECHNICIAN_20BRS1193;

