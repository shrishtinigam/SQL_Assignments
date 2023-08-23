CREATE OR REPLACE TRIGGER display_semester_changes
BEFORE UPDATE OF SEMESTER ON STUDENTS_20BRS1193
FOR EACH ROW
WHEN(NEW.REGNO > 0)
BEGIN
    dbms_output.put_line('Old semester: ' || :OLD.semester);
    dbms_output.put_line('New semester: ' || :NEW.semester);
END;
/