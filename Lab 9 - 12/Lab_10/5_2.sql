set serverout on;
DECLARE
    MY_NAME VARCHAR2(100);
BEGIN   
    MY_NAME := '&MY_NAME';
    GREETING(MY_NAME);
END;
/