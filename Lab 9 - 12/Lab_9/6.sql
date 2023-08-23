set serverout on;
DECLARE
    a integer;
    b integer; 
    c integer;
BEGIN
    a := &a;
    b := &b;
    c := &c;
    IF a > b AND a > c THEN
        dbms_output.put_line('First element, ' || a ||  ', is the greatest.');
    ELSIF b > a AND b > c THEN
        dbms_output.put_line('Second element, ' || b ||  ', is the greatest.');
    ELSE
        dbms_output.put_line('Third element, ' || c ||  ', is the greatest.');
    END IF;
END;
/