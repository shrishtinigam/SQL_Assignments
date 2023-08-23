set serverout on;
DECLARE
    a integer;
    b integer;
    operator varchar2(1);
    c integer;
BEGIN
    a:=&a;
    b:=&b;
    dbms_output.put_line('Choose mathematical operation, +, -, *, /');
    operator:='&operator';
    IF (operator = '+') THEN 
        c := a + b;
    ELSIF (operator = '-') THEN 
        c := a - b;
    ELSIF (operator = '*') THEN 
        c := a * b;
    ELSIF (operator = '/') THEN 
        c := a / b;
    END IF;
    dbms_output.put_line('Ans = '||c);
END;
/

