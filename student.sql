CREATE TABLE student
    ( roll_no	NUMBER(3)		CONSTRAINT     s_1  PRIMARY KEY,
      fname		VARCHAR2(10)	CONSTRAINT     s_2  NOT NULL,
      lname		VARCHAR2(10), 
      semail	VARCHAR2(30)	CONSTRAINT     s_3  NOT NULL,
      p_no		NUMBER(10),
	  saddress	VARCHAR2(50)	CONSTRAINT     s_4  NOT NULL,
	  staff_id	VARCHAR2(5)
    );

ALTER TABLE student
ADD CONSTRAINT s_5
FOREIGN KEY (staff_id) REFERENCES staff(staff_id);

INSERT INTO student VALUES (100, 'Steven', 'King', 'steven@stu.com', 7171717171, 'Ahmedabad', 'B0001');
INSERT INTO student VALUES (101, 'Neena', 'Kochhar', 'neena@stu.com', 7272727272, 'Surat', 'B0002');
INSERT INTO student VALUES (102, 'Lex', 'De Haan', 'lex@stu.com', 7272727273, 'Ahmedabad', 'B0002');
INSERT INTO student VALUES (103, 'Harsh', 'Patel', 'harsh@stu.com', 6262626262, 'Anand', 'B0003');
INSERT INTO student VALUES (104, 'Yug', 'Parekh', 'yug@stu.com', 5252525253, 'Ahmedabad', 'B0001');
INSERT INTO student VALUES (105, 'Hitesh', 'Verma', 'hitesh@stu.com', 5252525255, 'Patan', 'B0003');
INSERT INTO student VALUES (106, 'Raj', 'Sharma', 'raj@stu.com', 9875546781, 'Ahmedabad', 'B0004');
INSERT INTO student VALUES (107, 'Harsh', 'Gupta', 'harshg@stu.com', 6523412345, 'Vadodra', 'B0004');
INSERT INTO student VALUES (108, 'Divesh', 'Parekh', 'divesh@stu.com', 9765438210, 'Ahmedabad', 'B0001');
INSERT INTO student VALUES (109, 'Anish', 'Verma', 'anish@stu.com', 6345598765, 'Nadiad', 'B0002');