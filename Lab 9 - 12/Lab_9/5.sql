set serverout on;
DECLARE
    age integer;
BEGIN
    age := &age;
    IF(age >= 18) THEN
        dbms_output.put_line('Elligible to vote');
    ELSE 
        dbms_output.put_line('Not elligible to vote');
    END IF;
END;
/