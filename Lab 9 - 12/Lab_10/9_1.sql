CREATE OR REPLACE PROCEDURE AddStudent 
    (i_id student.id%type,
    i_first_name student.first_name%type, 
    i_last_name	student.last_name%type,
    i_major	student.major%type) 
IS
BEGIN
    INSERT INTO student (id, first_name, last_name, major, credits) values (i_id, i_first_name, i_last_name, i_major, 0);  
END	AddStudent;
/