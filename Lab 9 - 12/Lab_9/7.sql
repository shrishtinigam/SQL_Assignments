set serverout on;
DECLARE
    day integer;
BEGIN
    day:=&day;
    CASE day
        when 1 THEN dbms_output.put_line('Monday');
        when 2 THEN dbms_output.put_line('Tuesday');
        when 3 THEN dbms_output.put_line('Wednesday');
        when 4 THEN dbms_output.put_line('Thursday');
        when 5 THEN dbms_output.put_line('Friday');
        when 6 THEN dbms_output.put_line('Saturday');
        when 7 THEN dbms_output.put_line('Sunday');
        ELSE dbms_output.put_line('Invalid');
    END CASE;
END;
/