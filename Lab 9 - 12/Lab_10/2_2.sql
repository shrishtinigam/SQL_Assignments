set serverout on;
DECLARE
    V_OUT INTEGER;
BEGIN
    V_OUT := COUNT_EMP();
    dbms_output.put_line('Total Number of Employees: ' || v_out);
END;
/
