set serverout on;
CREATE OR REPLACE PROCEDURE P_HELLOWORLD
IS
BEGIN
    dbms_output.put_line('Hello World!!');
END;
/
