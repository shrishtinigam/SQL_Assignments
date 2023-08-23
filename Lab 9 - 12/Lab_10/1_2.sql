set serverout on;
DECLARE
    V_OUT VARCHAR2(30);
BEGIN
    V_OUT := HELLO();
    dbms_output.put_line('output string: ' || v_out);
END;
/
