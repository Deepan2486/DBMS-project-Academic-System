CREATE TABLE Course_Catalogue(
	
	course_id varchar(100) UNIQUE,
	course_name varchar(300) UNIQUE,
	department varchar(50),
	L INT,
	T INT,
	P INT,
	S INT,
	C NUMERIC(3,2),
	
	PRIMARY KEY (course_id)
);

CREATE TABLE Instructor(
	
	ins_id SERIAL UNIQUE,
	first_name varchar(100),
	last_name varchar(100),
	department varchar(50),
	age INT,
	position varchar(100),
	
	PRIMARY KEY (ins_id)
);

CREATE TABLE course_offering(
	
	course_id varchar(100),
	ins_id INT,
	timetable_slot varchar(50),
	section INT,
	year INT,
	semester INT,
	prerequisites varchar(500),
	min_CGPA NUMERIC(3, 2),
	eligible_batches varchar(500),
	eligible_depts varchar(500),
	
	PRIMARY KEY (course_id, section, year, semester),
	
	CONSTRAINT fk_courseid FOREIGN KEY(course_id) REFERENCES Course_catalogue(course_id),
	CONSTRAINT fk_insid FOREIGN KEY(ins_id) REFERENCES instructor(ins_id)
	
);

CREATE TABLE Student(
	
	st_id varchar(100) UNIQUE,
	first_name varchar(100),
	last_name varchar(100),
	department varchar(50),
	batch INT,
	degree varchar(100),
	
	PRIMARY KEY (st_id)
);



--Filling course catalogue table
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('CY101', 'Chemistry for Engineers', 'CY', 3, 2, 1, 1, 3);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES( 'GE103', 'Introduction to Programming', 'GE', 3, 2, 1, 1, 4.5);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('EE101', 'Introduction to Electrical Engineering', 'EE', 3, 2, 1, 1, 4);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('CS201', 'Data structures', 'CS', 3, 2, 1, 1, 4);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('HS202', 'HUMAN GEOGRAPHY', 'HS', 3, 2, 1, 1, 3); 
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('CE101', 'INTRO TO CIVIL ENGINEERING', 'CE', 3, 2, 1, 1, 3);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('ME101', 'Mechanics', 'ME', 3, 2, 1, 1, 3);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('GE111', 'EVS', 'GE', 3, 2, 1, 1, 3);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('MA102', 'Linear Algebra', 'MA', 3, 2, 1, 1, 3);
INSERT INTO course_catalogue(course_id, course_name, department, l, t, p, s, c)
VALUES('CH101', 'Introduction to Chemical Engineering', 'CH', 3, 2, 1, 1, 3),
('CH201', 'Thermodynamics', 'CH', 3, 2, 1, 1, 3),
('CS203', 'Digital Logic Design', 'CS', 3, 2, 1, 1, 4),
('CS204', 'Computer Architecture', 'CS', 3, 2, 1, 1, 4),
('EE201', 'Digital Electronics', 'EE', 3, 2, 1, 1, 3),
('EE202', 'Analog Design', 'EE', 3, 2, 1, 1, 4),
('EE301', 'Power Systems', 'EE', 3, 2, 1, 1, 4),
('ME201', 'Machine Theory', 'ME', 3, 2, 1, 1, 3),
('ME303', 'Fluid mechanics', 'ME', 3, 2, 1, 1, 4),
('MA201', 'Differential equations', 'MA', 3, 2, 1, 1, 3),
('MA202', 'Statistics', 'MA', 3, 2, 1, 1, 3.5),
('CE222', 'Structural mechanics', 'CE', 3, 2, 1, 1, 4),
('CE304', 'Steel structures', 'CE', 3, 2, 1, 1, 3),
('CS202', 'Programming pragmactics', 'CS', 3, 2, 0, 1, 4),
('CS301', 'Databases', 'CS', 3, 2, 0, 1, 4),
('CS302', 'Algorithms', 'CS', 3, 2, 0, 1, 4),
('CS303', 'Operating Systems', 'CS', 3, 2, 0, 1, 4);



--Filling Instructor table
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Amit', 'Sharma', 'EE', 26, 'Assistant professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Karishma', 'Roy', 'EE', 49, 'Associate Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Parakram', 'Suchi', 'CS', 45, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Saryu', 'Sengupta', 'CS', 38, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Swati', 'Sharma', 'CH', 52, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Ekta', 'Basu', 'CS', 47, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Rohit', 'Kumar', 'CS', 36, 'Associate professor');
(DEFAULT, 'Manju', 'Debnath', 'CS', 52, 'Associate professor'),
(DEFAULT, 'Diksha', 'Basu', 'EE', 32, 'Assistant professor'),
(DEFAULT, 'Madhav', 'K', 'ME', 66, 'Associate professor'),
(DEFAULT, 'Hitesh', 'Shukla', 'CE', 45, 'Assistant professor'),
(DEFAULT, 'Mani', 'Singla', 'CH', 33, 'Assistant professor'),
(DEFAULT, 'Zara', 'Sabharwal', 'MA', 32, 'Assistant professor');

--Filling Student Table
INSERT into student(st_id, first_name, last_name, department, batch, degree)
VALUES ('2019CSB1002', 'Vanshu', 'Patil', 'CS', 2019, 'BTech'),
('2020EEB1345', 'Ankush', 'David', 'EE', 2020, 'BTech'),
('2018MEB1290', 'Ritika', 'Deshpande', 'ME', 2018, 'BTech'),
('2020EEB1001', 'Payal', 'Dhar', 'EE', 2020, 'BTech'),
('2019MAB1054', 'Mohini', 'Soni', 'MA', 2019, 'BTech'),
('2019CHB1902', 'Samara', 'S', 'CH', 2019, 'BTech'),
('2020CEB1344', 'Tripti', 'Tripathi', 'CE', 2020, 'BTech'),
('2018MEB1122', 'Rachit', 'Jain', 'ME', 2018, 'BTech'),
('2020CSB1333', 'Somak', 'Bose', 'CS', 2020, 'BTech'),
('2021MAB1000', 'Kushal', 'Gupta', 'MA', 2017, 'BTech'),
('2020CHB1059', 'Soumya', 'Jain', 'CH', 2020, 'BTech'),
('2019CSB1075', 'Kriti', 'Pandey', 'CS', 2019, 'BTech'),
('2021EEB1067', 'Siddhant', 'Verma', 'EE', 2019, 'BTech'),
('2021CSM1115', 'Anita', 'Aggarwal', 'CS', 2020, 'MTech');


CREATE TABLE timetable_slots(
	slot varchar(20) UNIQUE PRIMARY KEY
);

--UPLOAD TIME-TABLE SLOTS FROM CSV FILE
CREATE or REPLACE PROCEDURE upload_timetableslots()
language plpgsql
as $$
declare
	location varchar(100);
	delim varchar(10);
begin
	location := 'E:\sql_databases\dbms project\timetable_slots.csv';
	delim := ',';
	
	DELETE from timetable_slots;
	
	EXECUTE format(
		'COPY timetable_slots(slot)
		FROM %L
		DELIMITER %L
		CSV HEADER;', location, delim );
	
end;
$$;

CALL upload_timetableslots();


--the function to create sepearte roles/users for each instructor
CREATE OR REPLACE FUNCTION create_instructor_user()
RETURNS VOID
language plpgsql
as $BODY$
DECLARE
	row_var Instructor%rowtype;
	rolename varchar(100);
	passw varchar(100);
	instructor_id varchar(100);
BEGIN
	FOR row_var in (SELECT * from Instructor)
	LOOP
		instructor_id := CAST(row_var.ins_id AS varchar);
		rolename := row_var.first_name ||'_'|| instructor_id ;
		passw := 'pass_' || instructor_id ;
		EXECUTE format(
        'CREATE USER %I WITH
            LOGIN
            PASSWORD %L'
         , rolename
         , passw
         );
	END LOOP;
	RETURN;
	
END;
$BODY$;


SELECT create_instructor_user();


--procedure used by instructors to offer a course
CREATE OR REPLACE PROCEDURE offer_course(insid INT, courseid varchar(100), year INT, semester INT, section INT, slot varchar(50), prereq varchar(100), min_cgpa numeric(5,2), batches varchar(100), depts varchar(100))
language plpgsql
as $$
declare
	flag BOOLEAN :=FALSE;
	row_catalogue course_catalogue%ROWTYPE;
	row_offering course_offering%ROWTYPE;
begin
	FOR row_catalogue in (SELECT * from course_catalogue)
	LOOP
		IF (row_catalogue.course_id = courseid) THEN 
			flag=TRUE;
			EXIT;
			--If this course exists in catalogue, then break out of loop
		END IF;
	END LOOP;
	
	IF (flag=FALSE) THEN
			RAISE EXCEPTION 'There is no Course in the catalogue with this course ID!';
			RETURN;
			--Course does'nt exist in catalogue
	END IF;	
	
	FOR row_offering in (SELECT * from course_offering co where co.ins_id=insid)
	LOOP
		IF(row_offering.timetable_slot=slot ) THEN
			RAISE EXCEPTION 'You already have a course scheduled in this timetable slot!';
			RETURN;
		END IF;
	END LOOP;
	
	INSERT into course_offering(course_id, ins_id, timetable_slot, section, year, semester, prerequisites, min_cgpa, eligible_batches, eligible_depts)
	VALUES (courseid, insid, slot, section, year, semester, prereq, min_cgpa, batches, depts);
	
end;
$$;

--trigger to make tables for each course whenever a course is offered
CREATE OR REPLACE FUNCTION _make_course_table()
RETURNS TRIGGER
LANGUAGE plpgsql
as $$
declare
	course_table varchar(200);
	instructor_id INT;
	instructor_name varchar(100);
	instructor_role varchar(100);
begin
	course_table:= NEW.course_id || '_section' || NEW.section || '_' || NEW.year || '_' || NEW.semester;
	EXECUTE format (
	'CREATE TABLE %I(st_id varchar(100), first_name varchar(100), last_name varchar(100), grade varchar(20));', course_table);
	
	instructor_id:= NEW.ins_id;
	SELECT first_name INTO instructor_name FROM Instructor where Instructor.ins_id=NEW.ins_id;
	
	instructor_role:= instructor_name || '_' || instructor_id;
	
	EXECUTE format (
	'GRANT ALL on %I TO %I;', course_table, instructor_role);
	RETURN NEW;
end;
$$;

CREATE TRIGGER make_course_table 
AFTER INSERT
on course_offering
FOR EACH ROW
EXECUTE PROCEDURE _make_course_table();

CALL offer_course(2, 'EE201', 2022, 1, 1, 'M1', 'GE104', 7.00, '2019', 'EE');	
CALL offer_course(1, 'EE201', 2022, 1, 2, 'M1', 'GE104', 5.00, '2019,2020,2021', 'EE');	
CALL offer_course(7, 'CS201', 2022, 1, 1, 'E2', 'GE103', 7.50, '2019,2020', 'CS');
CALL offer_course(4, 'MA102', 2022, 1, 1, 'A1', 'MA101', 7.00, '2019,2020', 'MA,CS,EE');
CALL offer_course(17, 'MA102', 2022, 1, 2, 'A1', 'MA101', 7.00, '2019,2020', 'MA,CS,EE');
CALL offer_course(11,'HS202', 2022, 1, 1, 'M2', '', 8.00, '2019,2020,2018', 'CY,MA');
CALL offer_course(6, 'CH101', 2022, 1, 1, 'E1', '', 7.50, '2019,2020,2021', 'CH');
CALL offer_course(5, 'ME101', 2022, 1, 2, 'A1', 'MA102', 7.50, '2019,2020,2021', 'ME');
CALL offer_course(6, 'CY101', 2022, 1, 1, 'M2', '', 7.00, '2018,2019,2020,2021', 'CS,EE,MA,CH');
CALL offer_course(12, 'CS301', 2022, 1, 1, 'A3', 'CS201', 7.50, '2019,2020,2021', 'CS');
CALL offer_course(9, 'CS302', 2022, 1, 1, 'E1', 'CS202', 7.00, '2019,2020,2021', 'CS EE');
CALL offer_course(12, 'CS303', 2022, 1, 1, 'A2', 'CS203', 7.00, '2019,2020,2021', 'CS EE');



--creating all batch advisor roles for each department
CREATE table departments(
	dept varchar(20) PRIMARY KEY UNIQUE
);
INSERT into departments(dept)
VALUES ('CS'), ('MA'), ('EE'), ('ME'), ('CH'), ('CE'), ('GE'), ('CY');

CREATE OR REPLACE FUNCTION create_advisor_user()
RETURNS VOID
LANGUAGE plpgsql
as $$
declare
	row_dept departments%ROWTYPE;
	rolename varchar(100);
	passw varchar(100);
begin
	FOR row_dept in (SELECT * from departments)
	LOOP
		rolename:='advisor_'|| row_dept.dept;
		passw := 'pass_'|| row_dept.dept;
		EXECUTE format(
		'CREATE USER %I WITH
            LOGIN
            PASSWORD %L'
         , rolename
         , passw
         );
	END LOOP;
	RETURN;
end;
$$;

SELECT create_advisor_user();


--make Dean Acad Role
CREATE ROLE Dean_Academics
LOGIN
PASSWORD 'pass_dean_acad';

--make Academic section role
CREATE ROLE academic_section
LOGIN
PASSWORD 'pass_acad';
	
--make all student roles
CREATE OR REPLACE FUNCTION create_student_user()
RETURNS VOID
language plpgsql
as $BODY$
DECLARE
	row_var Student%rowtype;
	rolename varchar(100);
	passw varchar(100);
BEGIN
	FOR row_var in (SELECT * from Student)
	LOOP
		rolename :=row_var.st_id;
		passw := 'pass_' || row_var.st_id ;
		EXECUTE format(
        'CREATE USER %I WITH
            LOGIN
            PASSWORD %L'
         , rolename
         , passw
         );
	END LOOP;
	RETURN;
	
END;
$BODY$;

SELECT create_student_user();


CREATE OR REPLACE PROCEDURE create_student_transcripts()
language plpgsql
as $$
declare
	student_table varchar(100);
	row_var Student%rowtype;
	student_role varchar(100);
	student_takes varchar(100);
begin
	FOR row_var in (SELECT * from Student)
	LOOP
		student_table:=row_var.first_name || '_' || row_var.st_id ||'_'|| 'transcript';
		student_takes:=row_var.first_name || '_' || row_var.st_id ||'_'|| 'takes';
		EXECUTE format (
		'CREATE TABLE %I(Course_id varchar(100), Year INT, Semester INT, Credits NUMERIC(3,2), Grade varchar(20));', student_table);
		
		EXECUTE format (
		'CREATE TABLE %I(Course_id varchar(100), section INT, timetable_slot varchar(50));', student_takes);
		
		student_role:= row_var.st_id;
		EXECUTE format (
		'GRANT SELECT on %I TO %I;', student_table, student_role);
		
		EXECUTE format (
		'GRANT SELECT, INSERT on %I TO %I;', student_takes, student_role);
	END LOOP;
	RETURN;

end;
$$;

CALL create_student_transcripts();


--utility function to convert grades to points
CREATE OR REPLACE FUNCTION grade_conversion(grade varchar(10))
RETURNS integer
language plpgsql
as $$
declare
	points integer;
begin
	IF grade = 'A' then
		points := 10;
	ELSEIF grade = 'A-' then 
		points := 9;
	ELSEIF grade = 'B' then 
		points := 8;
	ELSEIF grade = 'B-' then 
		points := 7;
	ELSEIF grade = 'C' then 
		points := 6;
	ELSEIF grade = 'C-' then 
		points := 5;
	ELSEIF grade = 'D' then 
		points := 4;
	ELSEIF grade = 'E' then 
		points := 3;
	ELSE 
		points:=0;
	END IF;
	
	RETURN points;

end;
$$;




CREATE OR REPLACE PROCEDURE upload_student_history()
language plpgsql
as $$
declare
	row_var Student%rowtype;
	rolename varchar(100);
	student_table varchar(100);
	location varchar(500);
	delim varchar(10);
begin
	FOR row_var in (SELECT * from Student)
	LOOP
		rolename :=row_var.st_id;
		student_table := row_var.first_name || '_' || row_var.st_id || '_' || 'transcript';
		location := 'E:\sql_databases\dbms project\student history\' ||rolename|| '.csv';
		delim := ',';
		EXECUTE format(
		'COPY %I(course_id, year, semester, credits, grade)
		FROM %L
		DELIMITER %L
		CSV HEADER;', student_table, location, delim );
	END LOOP;
end;
$$;

CALL upload_student_history();




--function to calculate resultant cgpa of student
CREATE OR REPLACE FUNCTION calculate_cgpa(id varchar(100))
RETURNS numeric(3,2)
language plpgsql
as $$
declare
	cgpa numeric(3,2);
	student_table varchar(100);
	name varchar(100);
	numerator numeric :=0;
	grade numeric; 
	sum_credits numeric :=0;
	rec RECORD;
begin

	SELECT first_name into name from student where st_id=id;
	student_table := name || '_' || id || '_' || 'transcript';
	
	FOR rec in EXECUTE format('SELECT grade, credits FROM %I', student_table) LOOP
				   		grade := CAST (grade_conversion(rec.grade) as numeric);
				   		numerator := numerator + grade*rec.credits;
				   		sum_credits := sum_credits + rec.credits;
				   	END LOOP;
	
	
	cgpa:= numerator / sum_credits;
	RETURN cgpa;
end;
$$;



CREATE OR REPLACE PROCEDURE register_course( courseid varchar(100), sec INT)
language plpgsql
as $$
declare
	rolename varchar(100)=CURRENT_ROLE;
	name varchar(100);
	row_offering course_offering%ROWTYPE;
	student_takes_table varchar(100);
	student_trans varchar(100);
	flag_exists BOOLEAN :=FALSE;
	flag_slot BOOLEAN :=FALSE;
	slot varchar(50);
	st_dept varchar(50);
	st_batch varchar(50);
	st_cgpa numeric(3,2);
	el_depts varchar(100);
	el_batches varchar(100);
	el_cgpa numeric(3,2);
	prereq varchar(200);
	n_prereq INT :=0;
	course_credit numeric;
	prereq_course varchar(50);
	i INT:=1;
	flag_pre BOOLEAN :=FALSE;
	ch varchar(1);
	sem1credits numeric :=0;
	sem2credits numeric :=0;
	curr_credits numeric :=0;
	rec1 RECORD;
	rec2 RECORD;
	rec3 RECORD;
	rec4 RECORD;
	ticket_id varchar(100);
	ticket_table varchar(100);
begin
	
	--checking if course is being offered
	FOR row_offering in (SELECT * from course_offering)
	LOOP
		IF (row_offering.course_id = courseid and row_offering.section= sec ) THEN 
			flag_exists := TRUE;
			slot := row_offering.timetable_slot;
			el_depts := row_offering.eligible_depts;
			el_batches := row_offering.eligible_batches;
			el_cgpa := row_offering.min_cgpa;
			prereq:=row_offering.prerequisites;
			EXIT;
		END IF;
	END LOOP;
	
	IF (flag_exists=FALSE) THEN
			RAISE EXCEPTION 'This course % is not being offered, or not being offered in this section!', courseid;
			RETURN;
	END IF;	
	
	--checking if timetable slot is clashing
	SELECT first_name into name from student where st_id=rolename;
	
	student_takes_table:= name || '_' || rolename || '_' || 'takes';
	student_trans:=name || '_' || rolename || '_' || 'transcript';
	
	
	FOR rec3 in EXECUTE FORMAT( 'select * from %I ', student_takes_table) LOOP
		if (rec.timetable_slot=slot) THEN
		 	RAISE EXCEPTION 'You already have a registered course in this time-table slot!';
			RETURN;
		END IF;
	END LOOP;
	
	
	--checking if department and batch is eligible
	st_dept=SUBSTRING (rolename,5,2 );
	st_batch=SUBSTRING (rolename,1,4 );
	
	IF el_batches not like '%' || st_batch || '%' THEN
		RAISE EXCEPTION 'Your batch % is not eligible !', st_batch;
		RETURN;
	END IF;
	
	IF el_depts not like '%' || st_dept || '%' THEN
		RAISE EXCEPTION 'Your department % is not eligible !', st_dept;
		RETURN;
	END IF;
	
	
	--chceking min cgpa
	st_cgpa=calculate_cgpa(rolename);
	IF (st_cgpa < el_cgpa) THEN
		RAISE EXCEPTION 'Your cgpa % is not enough for this course!', st_cgpa;
		RETURN;
	END IF;
	
	--checking course prereqs
	FOREACH ch IN ARRAY regexp_split_to_array(prereq, '')
	LOOP
  		IF ch=',' THEN n_prereq :=n_prereq+1;
		END IF;
	END LOOP;
	
	IF prereq='' THEN
		n_prereq=0;
	ELSE
		n_prereq=n_prereq+1;
	END IF;
	
	LOOP
		IF (i>n_prereq) THEN 
			EXIT;
		END IF;
		prereq_course:=split_part(prereq, ',', i);
		flag_pre :=FALSE;
		
		FOR rec4 in EXECUTE format('SELECT * from %I', student_trans) LOOP
			IF (rec4.course_id=prereq_course) THEN
				flag_pre=TRUE;
			END IF;
		END LOOP;
		
		IF flag_pre=FALSE THEN
			RAISE EXCEPTION 'You have not cleared % as prerequisite!', prereq_course;
			RETURN;
		END IF;
		i:=i+1;
	END LOOP;
	
	--1.25 credit limit rule
	FOR rec1 in EXECUTE format('SELECT * FROM %I', student_trans) LOOP
		IF (rec1.year=2021 AND rec1.semester=1) THEN
			sem1credits := sem1credits + rec1.credits;
		ELSEIF (rec1.year=2021 AND rec1.semester=2) THEN
			sem2credits := sem2credits + rec1.credits;
		END IF;
	END LOOP;
	
	FOR rec2 in EXECUTE format('SELECT * FROM %I', student_takes_table) LOOP
		curr_credits := curr_credits + rec2.credits;
	END LOOP;
	
	SELECT c INTO course_credit FROM course_catalogue WHERE course_id=courseid;
	
	curr_credits := curr_credits + course_credit;
	
	if (curr_credits <= (1.25 * (sem1credits + sem2credits)/2)) THEN
		EXECUTE FORMAT ('INSERT INTO %I(course_id, section, timetable_slot)
						VALUES (%L, %L, %L);', student_takes_table, courseid, sec, course_credit  );
		
	ELSE
		--ticket generation
		ticket_id := rolename || '_' || courseid || '_' || sec;
		ticket_table:= rolename || '_ticket';
		
		EXECUTE format('INSERT into %I(ticket_id, course_id, section) 
					   VALUES (%L, %L, %L);', ticket_table,ticket_id, courseid, sec);
	
	END IF;
	
	
end;
$$;

--make Dean's ticket table
CREATE OR REPLACE FUNCTION make_dean_ticket()
RETURNS void
language plpgsql
as $$
begin
	CREATE TABLE dean_ticket(ticket_id varchar(100), st_id varchar(100), course_id varchar(100), section INT, Dean_decision varchar(50));
end;
$$;

SELECT make_dean_ticket();

--make tickets table for each student
CREATE OR REPLACE FUNCTION make_student_ticket_tables()
RETURNS void
language plpgsql
as $$
DECLARE
	row_var Student%rowtype;
	rolename varchar(100);
	ticket_table varchar(100);
BEGIN
	FOR row_var in (SELECT * from Student)
	LOOP
		rolename :=row_var.st_id;
		ticket_table := rolename || '_ticket';
		EXECUTE format(' CREATE TABLE %I(ticket_id varchar(100), course_id varchar(100), section INT);'
					   , ticket_table);

	END LOOP;
END;
$$;

SELECT make_student_ticket_tables();



--make tickets table for each instructor
CREATE OR REPLACE FUNCTION make_instructor_ticket_tables()
RETURNS void
language plpgsql
as $$
DECLARE
	row_var Instructor%rowtype;
	ticket_table varchar(100);
	rolename varchar(100);
BEGIN
	FOR row_var in (SELECT * from Instructor)
	LOOP
		ticket_table := row_var.first_name || '_' || row_var.ins_id || '_' || 'ticket';
		rolename := row_var.first_name || '_' || row_var.ins_id;
		EXECUTE format(' CREATE TABLE %I(ticket_id varchar(100), st_id varchar(100), course_id varchar(100), section INT, Instructor_decision varchar(50));'
					   , ticket_table);
					   
		EXECUTE format('GRANT ALL on %I to %I;', ticket_table, rolename);

	END LOOP;
END;
$$;


SELECT make_instructor_ticket_tables();

--mnake tickets for each batch advisor
CREATE OR REPLACE FUNCTION make_advisor_ticket_tables()
RETURNS void
language plpgsql
as $$
DECLARE
	row_dept departments%ROWTYPE;
	rolename varchar(100);
	ticket_table varchar(100);
BEGIN
	FOR row_dept in (SELECT * from departments)
	LOOP
		ticket_table := 'advisor_'|| row_dept.dept || '_ticket';
		rolename:='advisor_'|| row_dept.dept; 
		EXECUTE format(' CREATE TABLE %I(ticket_id varchar(100), st_id varchar(100), course_id varchar(100), section INT, Advisor_decision varchar(50));'
					   , ticket_table);
					   
		EXECUTE format('GRANT ALL on %I to %I;', ticket_table, rolename);

	END LOOP;
END;
$$;


SELECT make_advisor_ticket_tables();



--THIS COPIES ALL TICKETS TO DEAN  Ticket TABLE
CREATE OR REPLACE PROCEDURE extract_ticket_dean()
language plpgsql
as $$
declare
	row_student student%ROWTYPE;
	student_ticket_table varchar(100);
	rec RECORD;
begin
	FOR row_student in (SELECT * FROM Student) LOOP
		student_ticket_table := row_student.st_id || '_ticket';
		
		FOR rec in EXECUTE format('SELECT * FROM %I', student_ticket_table) LOOP
		
			EXECUTE format('INSERT into dean_ticket(ticket_id, st_id, course_id,section)
							   VALUES (%L, %L, %L, %L)', rec.ticket_id, row_student.st_id, rec.course_id, rec.section);
		
		END LOOP;
	
	END LOOP;
	
end;
$$;

--EXTRACTS ALL TICKETS OF THAT INSTRUCTOR
CREATE OR REPLACE PROCEDURE extract_ticket_instructor()
language plpgsql
as $$
declare
	row_student student%ROWTYPE;
	student_ticket_table varchar(100);
	ins_ticket_table varchar(100);
	insid INT;
	rolename varchar(100);
	rec RECORD;
	rec1 RECORD;
	flag BOOLEAN:= FALSE;
begin
	rolename :=CURRENT_ROLE;
	ins_ticket_table := rolename || '_ticket';
	insid= split_part(rolename, '_', 2);

	FOR row_student in (SELECT * FROM Student) LOOP
		student_ticket_table := row_student.st_id || '_ticket';
		
		FOR rec in EXECUTE format('SELECT * FROM %I', student_ticket_table) LOOP
			FOR rec1 in (SELECT * from course_offering ) LOOP
				IF (rec1.course_id=rec.course_id and rec1.section= rec.section and insid=rec1.ins_id) THEN
					flag := TRUE;
				END IF;
			END LOOP;
			
			if (flag=TRUE) THEN
				EXECUTE format('INSERT into %I(ticket_id, st_id, course_id,section)
							   VALUES (%L, %L, %L, %L)', ins_ticket_table, rec.ticket_id, row_student.st_id, rec.course_id, rec.section);
			END IF;
			flag := FALSE;
		END LOOP;
	
	END LOOP;
	
end;
$$;

--EXTRACTS ALL TICKETS OF THAT ADVISOR
CREATE OR REPLACE PROCEDURE extract_ticket_advisor()
language plpgsql
as $$
declare
	row_student student%ROWTYPE;
	student_ticket_table varchar(100);
	advisor_ticket_table varchar(100);
	rolename varchar(100);
	dept varchar(10);
	student_dept varchar(10);
	rec RECORD;
begin
	rolename :=CURRENT_ROLE;
	advisor_ticket_table := rolename || '_ticket';
	dept= split_part(rolename, '_', 2);

	FOR row_student in (SELECT * FROM Student) LOOP
		student_ticket_table := row_student.st_id || '_ticket';
		student_dept := SUBSTRING (row_student.st_id, 5, 2 );
		IF (dept=student_dept) THEN
			FOR rec in EXECUTE format('SELECT * FROM %I', student_ticket_table) LOOP
				EXECUTE format('INSERT into %I(ticket_id, st_id, course_id, section)
							   VALUES (%L, %L, %L, %L)', advisor_ticket_table, rec.ticket_id, row_student.st_id, rec.course_id, rec.section);
			END LOOP;
		END IF;
	
	END LOOP;
	
end;
$$;


--This allows instructors to give ticket response
CREATE OR REPLACE PROCEDURE instructor_ticket_response(ticketid varchar(100), response varchar(50))
language plpgsql
as $$
declare
	ins_ticket_table varchar(100);
	rolename varchar(100);
	rec RECORD;
begin
	rolename :=CURRENT_ROLE;
	ins_ticket_table := rolename || '_ticket';
	
	FOR rec in EXECUTE format('SELECT * FROM %I', ins_ticket_table) LOOP
		IF (rec.ticket_id=ticketid) THEN
			EXECUTE format ('UPDATE %I SET instructor_decision= %L; ', ins_ticket_table, response);
		END IF;
	END LOOP;
	
end;
$$;

----This allows advisors to give ticket response
CREATE OR REPLACE PROCEDURE advisor_ticket_response(ticketid varchar(100), response varchar(50))
language plpgsql
as $$
declare
	advisor_ticket_table varchar(100);
	rolename varchar(100);
	rec RECORD;
begin
	rolename :=CURRENT_ROLE;
	advisor_ticket_table := rolename || '_ticket';
	
	FOR rec in EXECUTE format('SELECT * FROM %I', advisor_ticket_table) LOOP
		IF (rec.ticket_id=ticketid) THEN
			EXECUTE format ('UPDATE %I SET advisor_decision= %L; ', advisor_ticket_table, response);
		END IF;
	END LOOP;
	
end;
$$;


CREATE OR REPLACE PROCEDURE dean_copy_response()
language plpgsql
as $$
declare
	rec RECORD;
	ticketid varchar(100);
	advisor_table varchar(100);
	advisor_response varchar(50);
	ins_response varchar(50);
	ins_table varchar(100);
	st_dept varchar(100);
	insid INT;
	insname varchar(100);
	rec1 record;
	
	recx RECORD;
	recy RECORD;

begin

	FOR rec in (SELECT * from dean_ticket) LOOP
	
		--to go to advisor's table
		ticketid=rec.ticket_id;
		st_dept := SUBSTRING( split_part(ticketid, '_', 1), 5, 2);
		
		advisor_table= 'advisor_' || st_dept || '_ticket';
		
		FOR recx in EXECUTE format('SELECT * from %I', advisor_table) LOOP
			if (recx.ticket_id=ticketid) THEN
				advisor_response=recx.advisor_decision;
			End if;
		END LOOP;
		
		
		--to go to instructor's table
		FOR rec1 in (SELECT * from course_offering c, instructor i 
					WHERE c.course_id=rec.course_id AND c.section=rec.section AND i.ins_id=c.ins_id) LOOP
			insid=rec1.ins_id;
			insname=rec1.first_name;
			
		END LOOP;
		
		ins_table= insname || '_' || insid || '_ticket';
		
		FOR recy in EXECUTE format('SELECT * from %I', ins_table) LOOP
			if (recy.ticket_id=ticketid) THEN
				ins_response=recy.instructor_decision;
			End if;
		END LOOP;
					   
		
		EXECUTE format('UPDATE dean_ticket SET instructor_decision=%L WHERE ticket_id=%L', ins_response, ticketid );
		EXECUTE format('UPDATE dean_ticket SET advisor_decision=%L WHERE ticket_id=%L', advisor_response, ticketid );
	
	END LOOP;

end;
$$;

CALL dean_copy_response();

CREATE OR REPLACE PROCEDURE dean_ticket_response(ticketid varchar(100), response varchar(50))
language plpgsql
as $$
declare
	rec RECORD;
begin
	
	FOR rec in (SELECT * FROM dean_ticket) LOOP
		EXECUTE format ('UPDATE dean_ticket SET dean_decision= %L WHERE ticket_id=%L; ', response, ticketid);
	END LOOP;
	
end;
$$;


CREATE OR REPLACE FUNCTION _dean_decision()
RETURNS trigger
language plpgsql
as $$
declare
	dean_response varchar(50);
	course varchar(50);
	ticketid varchar(100);
	sec INT;
	stname varchar(100);
	stid varchar(100);
	st_takes varchar(200);
	slot varchar(50);
	flag BOOLEAN:=FALSE;
	rec RECORD;
begin
	
	IF (NEW.dean_decision = 'YES') THEN
		ticketid=NEW.ticket_id;
		stid=split_part(ticketid, '_', 1);
		course:= split_part(ticketid, '_', 2);
		sec := split_part(ticketid, '_', 3);
		
		SELECT first_name INTO stname from Student where Student.st_id=stid;
		st_takes := stname || '_' || stid || '_' || 'takes';
		
		SELECT timetable_slot into slot from course_offering where course_offering.course_id=course and course_offering.section=sec;
		
		FOR rec in EXECUTE FORMAT('select * from %I', st_takes) LOOP
			if (rec.course_id=course AND rec.section=sec) THEN
				flag=TRUE;
			end if;
		END LOOP;
		
		if(flag=FALSE) then
			EXECUTE format ('INSERT INTO %I(course_id, section, timetable_slot) VALUES(%L, %L, %L);', st_takes, course, sec, slot);
		end if;
		flag := FALSE;
	END IF;
	
	RETURN NEW;
end;
$$;

CREATE TRIGGER dean_decision
AFTER UPDATE
on dean_ticket
FOR EACH ROW
EXECUTE PROCEDURE _dean_decision();



CREATE OR REPLACE PROCEDURE copy_to_course_tables()
language plpgsql
as $$
declare
	st_takes_table varchar(100);
	course_table varchar(100);
	rec RECORD;
	rec1 RECORD;

begin
	FOR rec in (select * from Student) LOOP
		st_takes_table := rec.first_name || '_' || rec.st_id || '_' || 'takes';
		
		FOR rec1 in EXECUTE FORMAT ('select * from %I', st_takes_table) LOOP
			course_table := rec1.course_id || '_section' || rec1.section || '_2022_1';
			
			EXECUTE format ('INSERT into %I(st_id, first_name, last_name) VALUES (%L, %L, %L);', 
						   course_table,rec.st_id, rec.first_name, rec.last_name);
						   
		END LOOP;
	
	
	END LOOP;

end;
$$;

CALL copy_to_course_tables();


CREATE OR REPLACE PROCEDURE upload_grades( course_id varchar(100), section INT, year INT, semester INT)
language plpgsql
as $$
declare
	course_table varchar(100);
	location varchar(100);
	delim varchar(10);
	rec1 RECORD;
	rec2 RECORD;
begin
	course_table := course_id || '_section' || section || '_' || year || '_' || semester;
	
	location := 'E:\sql_databases\dbms project\grades\' ||course_table|| '.csv';
	delim := ',';
	
	CREATE TABLE dummy(
		st_id varchar(100) PRIMARY KEY UNIQUE,
		first_name varchar(100),
		last_name varchar(100),
		grade varchar(20)
	);
	
	EXECUTE format(
		'COPY dummy(st_id, first_name, last_name, grade)
		FROM %L
		DELIMITER %L
		CSV HEADER;', location, delim );
	
	
	FOR rec1 in (select * from dummy) LOOP
			FOR rec2 in EXECUTE FORMAT('select * from %I', course_table) LOOP
				if (rec1.st_id=rec2.st_id) THEN
					EXECUTE FORMAT ('UPDATE %I SET grade=%L WHERE st_id=%L;', 
								   course_table, rec1.grade, rec1.st_id);
				end if;
			END LOOP;
	
	END LOOP;
	DROP TABLE IF EXISTS dummy;
end;
$$;


CREATE OR REPLACE PROCEDURE copy_grades_to_transcript()
language plpgsql
as $$
declare
	course_table varchar(100);
	st_trans_table varchar(100);
	delim varchar(10);
	rec1 RECORD;
	rec2 RECORD;
	rec3 RECORD;
	flag BOOLEAN:=FALSE;
	cred numeric;
begin
	if (CURRENT_ROLE <> 'dean_academics' ) THEN
		RAISE EXCEPTION 'You are not the Dean Academics. Access denied. ';
		RETURN;
		
	end if;
	
	FOR rec1 in (select * from course_offering) LOOP
		course_table:= rec1.course_id || '_section' || rec1.section || '_' || rec1.year || '_' || rec1.semester;
		
		FOR rec2 in EXECUTE FORMAT ('select * from %I', course_table) LOOP
			st_trans_table:= rec2.first_name || '_' || rec2.st_id || '_' || 'transcript';
			
			FOR rec3 in execute format ('select * from %I', st_trans_table) LOOP
				if(rec3.course_id=rec1.course_id and rec3.year=rec1.year and rec3.semester=rec1.semester) THEN
					flag:= TRUE;
				end if;			
			END LOOP;
			
			if (flag=FALSE) THEN
			
				SELECT C into cred FROM course_catalogue where course_catalogue.course_id=rec1.course_id;
				
				EXECUTE FORMAT ('INSERT INTO %I(course_id, year, semester, credits, grade) VALUES(%L,%L,%L,%L,%L)',
						   st_trans_table, rec1.course_id, rec1.year, rec1.semester, cred ,rec2.grade);
			end if;
			
			flag :=FALSE;
		
		END LOOP;
	END LOOP;
	
	
end;
$$;


CREATE OR REPLACE PROCEDURE report_generation(stid varchar(100))
language plpgsql
as $$
declare
	st_trans_table varchar(100);
	st_cgpa numeric(3,2);
	rec RECORD;
	rec1 RECORD;
begin
	FOR rec in (select * from Student) LOOP
		if(rec.st_id =stid ) THEN
			st_trans_table:= rec.first_name || '_' || rec.st_id || '_' || 'transcript';
			st_cgpa=calculate_cgpa(stid);
			
		FOR rec1 in EXECUTE FORMAT('SELECT * FROM %I', st_trans_table) LOOP
			RAISE NOTICE 'course: %       year: %         sem: %        credits: %       grade:  %', rec1.course_id, rec1.year, rec1.semester, rec1.credits, rec1.grade; 
		END LOOP;
		
		RAISE NOTICE 'CGPA: %', st_cgpa;
		end if;
	
	END LOOP;

end;
$$;


--ALL ACCESS GIVING
CREATE OR REPLACE FUNCTION give_access_to_dean()
RETURNS void
language plpgsql
as $$
begin
	GRANT SELECT, INSERT, UPDATE, DELETE
	ON ALL TABLES IN SCHEMA public 
	TO dean_academics;
	
	GRANT SELECT, INSERT, UPDATE, DELETE
	ON ALL TABLES IN SCHEMA public 
	TO academic_section;
	
	return;
end;
$$;

SELECT give_access_to_dean();

CREATE OR REPLACE FUNCTION give_access_to_advisor()
RETURNS VOID
language plpgsql
as $$
declare
	row_dept departments%ROWTYPE;
	rolename varchar(100);
begin
	FOR row_dept in (SELECT * from departments)
	LOOP
		rolename:='advisor_'|| row_dept.dept;
		EXECUTE format(
		'GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC
		 TO %I', rolename);
	END LOOP;
	
	return;
end;
$$;

SELECT give_access_to_advisor();

CREATE OR REPLACE FUNCTION give_access_to_instructor()
RETURNS VOID
language plpgsql
as $$
declare
	row_var Instructor%rowtype;
	rolename varchar(100);
	instructor_id varchar(100);
begin
	FOR row_var in (SELECT * from Instructor)
	LOOP
		instructor_id := CAST(row_var.ins_id AS varchar);
		rolename := row_var.first_name ||'_'|| instructor_id ;
		EXECUTE format(
		'GRANT SELECT ON ALL TABLES IN SCHEMA PUBLIC
		 TO %I', rolename);
		 
		 EXECUTE format(
		 'GRANT SELECT, INSERT, UPDATE, DELETE ON course_offering to %I'
			 ,rolename
		 );
		 
	END LOOP;
	return;
end;
$$;
SELECT give_access_to_instructor();

CREATE OR REPLACE FUNCTION give_access_to_student()
RETURNS VOID
language plpgsql
as $$
declare
	row_var Student%rowtype;
	rolename varchar(100);
	ticket_table varchar(100);
begin
	FOR row_var in (SELECT * from Student)
	LOOP
		rolename :=row_var.st_id;
		ticket_table:= rolename || '_ticket';
		EXECUTE format(
		'GRANT SELECT ON course_offering, course_catalogue, student, dean_ticket
		 TO %I;', rolename);
		 
		 EXECUTE format('GRANT ALL ON %I to %I;', ticket_table, rolename );
		 
	END LOOP;
	return;
end;
$$;

SELECT give_access_to_student();


