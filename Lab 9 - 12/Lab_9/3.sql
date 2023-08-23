set serverout on;
DECLARE
    salary_amt EMP.SALARY%type;
BEGIN
    SELECT SALARY INTO salary_amt FROM EMP WHERE NAME = 'Ravi';
    dbms_output.put_line('Salary of Ravi: '||salary_amt);
END;
/