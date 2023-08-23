set serverout on;
DECLARE
    CURSOR C2 IS SELECT * FROM CUSTOMERS_20BRS1193 WHERE AGE < 18;
    CUST_REC CUSTOMERS_20BRS1193%ROWTYPE;
BEGIN
    OPEN C2;
        LOOP
            FETCH C2 INTO CUST_REC;
            EXIT WHEN C2%NOTFOUND;
                dbms_output.put_line(CUST_REC.ID || ' ' || CUST_REC.NAME || ' ' || CUST_REC.AGE || ' ' || CUST_REC.ADDRESS || ' ' || CUST_REC.SALARY);
        END LOOP;
    CLOSE C2;
END;
/