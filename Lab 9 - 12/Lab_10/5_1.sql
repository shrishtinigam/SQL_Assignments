CREATE OR REPLACE PROCEDURE GREETING(NAME IN VARCHAR2)
IS
BEGIN
    dbms_output.put_line('Hello ' || NAME || ' !! Welcome to PLSQL.');
END;
/