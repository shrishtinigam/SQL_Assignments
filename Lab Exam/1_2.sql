set serverout on;
DECLARE
    CNT INTEGER;  
BEGIN
    APT_COUNT(CNT);  
    dbms_output.put_line('The no. of appointments made after 12PM in Jun are ' || CNT);
END;
/
