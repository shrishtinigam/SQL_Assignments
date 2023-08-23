/*CREATE TABLE table_name (field_1 datatype(n), field_2 datatype(n) …… );*/

CREATE TABLE Department_20BRS1193 (deptid varchar2(10), dname varchar2(10), location varchar2(20));
CREATE TABLE Student_20BRS1193 (regnum varchar2(9), name varchar2(20), deptid varchar2(20), semester varchar2(10), age number(3,1));
CREATE TABLE Faculty_20BRS1193 (fid varchar2(10), fname varchar2(10), deptid varchar2(10));
CREATE TABLE Class_20BRS1193 (cname varchar2(10), slot varchar2(10), room number(4,0), fid varchar2(10));
CREATE TABLE Enrolled_20BRS1193 (regnum varchar2(9), cname varchar2(10));

/* ALTER TABLE table_name ADD field_name datatype(n); */

ALTER TABLE Student_20BRS1193 ADD gender varchar2(10);
ALTER TABLE Student_20BRS1193 ADD mobile varchar2(10);

/* ALTER TABLE table_name RENAME COLUMN old_field_name TO new_field_name; */

ALTER TABLE Student_20BRS1193 RENAME COLUMN name TO sname;
ALTER TABLE Faculty_20BRS1193 RENAME COLUMN fid TO facultyid;
ALTER TABLE Class_20BRS1193 RENAME COLUMN fid TO facultyid;

/* DESC table_name; */

DESC Department_20BRS1193;
DESC Student_20BRS1193;
DESC Faculty_20BRS1193;
DESC Class_20BRS1193;
DESC Enrolled_20BRS1193;

/* DROP TABLE table_name;*/

DROP TABLE Enrolled_20BRS1193;
