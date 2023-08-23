set serverout on;
DECLARE
    C_OUT COURSES.DESCRIPTION%TYPE;
    COURSE_NO COURSES.ID%TYPE;
BEGIN
    COURSE_NO := &COURSE_NO;
    C_OUT := COURSE_DESC(COURSE_NO);
    dbms_output.put_line('Description of course: ' || COURSE_NO || ' is: '|| C_OUT);
END;
/