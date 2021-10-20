CREATE TABLE Course_Offering(
	
	index SERIAL UNIQUE,
	course_id varchar(100),
	course_name varchar(300),
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

INSERT INTO course_offering(index, course_id, course_name, department, section, semester, year, l, t, p, s, c)
VALUES(DEFAULT, 'CY101', 'Chemistry for Engineers', 'CY', 1, 1, 2019, 3, 2, 1, 1, 3);
VALUES(DEFAULT, 'GE103', 'Introduction to Programming', 'CS', 1, 1, 2019, 3, 2, 1, 1, 4.5);

INSERT INTO instructor(ins_id, ins_name, department, age, position)
VALUES (DEFAULT, 'Amit Sharma', 'EE', 26, 'Assistant professor');
