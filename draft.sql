CREATE TABLE Course_Catalogue(
	
	course_id varchar(100) UNIQUE,
	course_name varchar(300) UNIQUE,
	department varchar(50),
	L INT,
	T INT,
	P INT,
	S INT,
	C INT,
	
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
	
	course_id varchar(100) UNIQUE,
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
	
	CONSTRAINT fk_courseid FOREIGN KEY(course_id) REFERENCES course_offering(course_id),
	CONSTRAINT fk_insid FOREIGN KEY(ins_id) REFERENCES instructor(ins_id)
	
);

CREATE TABLE Student(
	
	st_id varchar(100),
	first_name varchar(100),
	last_name varchar(100),
	department varchar(50),
	batch INT,
	degree varchar(100),
	
	PRIMARY KEY (st_id)
);



--Filling course offering table
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
VALUES('CH101', 'Introduction to Chemical Engineering', 'CH', 3, 2, 1, 1, 3);

--Filling Instructor table
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Amit', 'Sharma', 'EE', 26, 'Assistant professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Karishma', 'Roy', 'EE', 49, 'Associate Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Parakram', 'Suchi', 'CE', 45, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Saryu', 'Sengupta', 'MA', 38, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Kartik' ,'Matta', 'ME', 32, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Swati', 'Sharma', 'CH', 52, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Ekta', 'Basu', 'CS', 47, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Virat', 'Bindra', 'ME', 29, 'Assistant Professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Rohit', 'Kumar', 'CS', 36, 'Associate professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Subham', 'Singh', 'CH', 45, 'Associate professor');
INSERT INTO instructor(ins_id, first_name, last_name, department, age, position)
VALUES (DEFAULT, 'Rahul', 'Sabharwal', 'CE', 32, 'Associate professor');

--Filling Student Table
INSERT into student(st_id, first_name, last_name, department, batch, degree)
VALUES ('2019CSB1002', 'Vanshu', 'Patil', 'CS', 2019, 'BTech'),
('2020EEB1345', 'Ankush', 'David', 'EE', 2020, 'BTech'),
('2020CSM1099', 'Tarun', 'Sharma', 'CS', 2020, 'MTech'),
('2018MEB1290', 'Ritika', 'Deshpande', 'ME', 2018, 'BTech'),
('2020EEB1001', 'Payal', 'Dhar', 'EE', 2020, 'BTech'),
('2019MAB1054', 'Mohini', 'Soni', 'MA', 2019, 'BTech'),
('2019CHB1902', 'Samara', 'S', 'CH', 2019, 'BTech'),
('2020CEM1111', 'Ankush', 'Gupta', 'CE', 2020, 'MTech'),
('2020CEB1344', 'Tripti', 'Tripathi', 'CE', 2020, 'BTech'),
('2018MEB1122', 'Rachit', 'Jain', 'ME', 2018, 'BTech'),
('2020CSB1333', 'Somak', 'Bose', 'CS', 2020, 'BTech'),
('2017MAB1000', 'Kushal', 'Gupta', 'MA', 2017, 'BTech');


CREATE TABLE timetable_slots(
	slot varchar(20) UNIQUE PRIMARY KEY
);

INSERT into timetable_slots(slot)
VALUES ('M1');
INSERT into timetable_slots(slot)
VALUES ('M2'), ('A1'), ('A2'), ('E1'), ('E2');


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

CREATE OR REPLACE PROCEDURE offer_course(course_id varchar(100), year INT, semester INT, section INT, slot varchar(50), prereq varchar(100), min_cpga numeric(5,2), batches varchar(100), depts varchar(100))
language plpgsql
as $$
declare
	flag BOOLEAN :=FALSE;
	row_catalogue course_catalogue%ROWTYPE;
	row_offering course_offering%ROWTYPE;
begin
	FOR row_catalogue in (SELECT * from course_catalogue)
	LOOP
		IF (row_catalogue.course_id = course_id) THEN 
			flag=TRUE;
			EXIT;
			--If this course exists in catalogue, then break out of loop
		END IF;
	END LOOP;
	
	IF (flag=FALSE) THEN
			RAISE EXCEPTION 'There is no Course with this course ID!';
			RETURN;
			--Course does'nt exist in catalogue
	END IF;		
	
end;
$$;


			
		
	
	
