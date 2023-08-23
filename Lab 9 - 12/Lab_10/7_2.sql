DECLARE 
    GREET_VAR VARCHAR2(100);
BEGIN   
    GREET_VAR := '&GREET_VAR';
    GREETING_IN_OUT(GREET_VAR);
    dbms_output.put_line(GREET_VAR);
END;
/