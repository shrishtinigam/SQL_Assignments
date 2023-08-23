set serverout on;
DECLARE
    E_NAME VARCHAR2(100);
    E_CODE VARCHAR2(100);
BEGIN   
    E_NAME := '&E_NAME';
    EMPLOYEE_EXIST(E_NAME, E_CODE);
    dbms_output.put_line(E_CODE);
END;
/