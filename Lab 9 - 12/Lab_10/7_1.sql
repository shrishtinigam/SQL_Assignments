CREATE OR REPLACE PROCEDURE GREETING_IN_OUT(GREETING_VAR IN OUT VARCHAR2)
IS 
BEGIN
    GREETING_VAR := 'Hello ' || GREETING_VAR || '! Welcome to PLSQL.';
END;
/