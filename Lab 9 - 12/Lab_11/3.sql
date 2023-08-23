set serverout on;
DECLARE
    TOTAL_ROWS INT;
BEGIN
    UPDATE CUSTOMERS_20BRS1193
    SET SALARY = SALARY + 0;
    TOTAL_ROWS := SQL%ROWCOUNT;
    dbms_output.put_line('Row Count: ' || TOTAL_ROWS);
END;
/