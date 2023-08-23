set serverout on;
DECLARE
    n integer;
    s integer;
BEGIN
    n:=&n;
    s := 0;
    FOR i in 1..n 
    LOOP
        s := s + i;
    END LOOP;
    dbms_output.put_line('Sum of first ' || n || ' natural numbers: ' || s);
END;
/
