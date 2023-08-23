set serverout on;
DECLARE
    dept_id varchar2(2);
    dept_name DEPARTMENT.NAME%type;
    emp_amt integer;
BEGIN
    dept_id := &dept_id;
    SELECT COUNT(NAME) INTO emp_amt FROM EMP WHERE DEPT=dept_id;
    SELECT NAME INTO dept_name FROM DEPARTMENT WHERE DID=dept_id;
    dbms_output.put_line('Number of employees in department '||dept_name||' are '||emp_amt);
END;
/