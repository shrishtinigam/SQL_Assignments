set serverout on;
DECLARE
    s_id student.id%type;
    s_first_name student.first_name%type; 
    s_last_name	student.last_name%type; 
    s_major	student.major%type;
BEGIN
    s_id := &s_id;  
    s_first_name := '&s_first_name';  
    s_last_name := '&s_last_name';  
    s_major := '&s_major';  
    AddStudent(s_id, s_first_name, s_last_name, s_major);
END;
/

