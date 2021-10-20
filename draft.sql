CREATE TABLE Course_Offering(
	
	index SERIAL UNIQUE,
	course_id varchar(100) UNIQUE,
	course_name varchar(300) UNIQUE,
	department varchar(50),
	section INT,
	semester INT,
	year INT,
	L INT,
	T INT,
	P INT,
	S INT,
	C INT,
	
	PRIMARY KEY (course_id, section, semester, year)
);

CREATE TABLE Instructor(
	
	ins_id SERIAL UNIQUE,
	ins_name varchar(100),
	department varchar(50),
	age INT,
	position varchar(100),
	
	PRIMARY KEY (ins_id, ins_name, department)
);

CREATE TABLE teaches(
	
	course_id varchar(100),
	ins_id INT,
	timetable_slot varchar(50),
	classroom varchar(50),
	
	PRIMARY KEY (timetable_slot, classroom),
	
	CONSTRAINT fk_courseid FOREIGN KEY(course_id) REFERENCES course_offering(course_id),
	CONSTRAINT fk_insid FOREIGN KEY(ins_id) REFERENCES instructor(ins_id)
	
);

--Filling course offering table
INSERT INTO course_offering(index, course_id, course_name, department, section, semester, year, l, t, p, s, c)
VALUES(DEFAULT, 'CY101', 'Chemistry for Engineers', 'CY', 1, 1, 2019, 3, 2, 1, 1, 3);
INSERT INTO course_offering(index, course_id, course_name, department, section, semester, year, l, t, p, s, c)
VALUES(DEFAULT, 'GE103', 'Introduction to Programming', 'CS', 1, 1, 2019, 3, 2, 1, 1, 4.5);
INSERT INTO course_offering(index, course_id, course_name, department, section, semester, year, l, t, p, s, c)
VALUES(DEFAULT, 'EE101', 'Introduction to Electrical Engineering', 'EE', 1, 2, 2019, 3, 2, 1, 1, 4);
INSERT INTO course_offering(index, course_id, course_name, department, section, semester, year, l, t, p, s, c)
VALUES(DEFAULT, 'CS201', 'Data structures', 'CS', 1, 1, 2020, 3, 2, 1, 1, 4);

--Filling Instructor table
INSERT INTO instructor(ins_id, ins_name, department, age, position)
VALUES (DEFAULT, 'Amit Sharma', 'EE', 26, 'Assistant professor');
