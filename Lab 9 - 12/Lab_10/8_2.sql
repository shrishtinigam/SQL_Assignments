set serverout on;
DECLARE
    BONUS INTEGER;  
    E_ID INTEGER;  
BEGIN
    E_ID := &EMPLOYEE_NO;  
    CALC_BONUS(E_ID, BONUS);  
    dbms_output.put_line('The Bonus for the employee' || E_ID || ' is ' || BONUS);
END;
/
