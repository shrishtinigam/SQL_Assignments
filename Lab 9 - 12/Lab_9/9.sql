set serverout on;
DECLARE
    n integer;
    i integer;
    s integer;
BEGIN
    n:=&n;
    s := 0;
    i := 1;
    WHILE i <= n
    LOOP
        s := s + i;
        i := i + 1;
    END LOOP;
    dbms_output.put_line('Sum of first ' || n || ' natural numbers: ' || s);
END;
/