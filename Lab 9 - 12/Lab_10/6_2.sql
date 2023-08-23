DECLARE 
    GREET_VAR VARCHAR2(100);
BEGIN   
    GREETING_OUT(GREET_VAR);
    dbms_output.put_line(GREET_VAR);
END;
/