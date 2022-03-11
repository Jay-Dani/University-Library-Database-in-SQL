CREATE TABLE staff
    ( staff_id		VARCHAR2(5)		 CONSTRAINT	staff_1	PRIMARY KEY,
      st_fname		VARCHAR2(10)	 CONSTRAINT staff_2  NOT NULL,
      st_lname      VARCHAR2(10), 
      phone_no		NUMBER(10)		CONSTRAINT staff_3  NOT NULL,
	  email			VARCHAR2(30)	CONSTRAINT staff_6  NOT NULL,
	  address		VARCHAR2(50)	CONSTRAINT staff_7  NOT NULL,
	  user_id		VARCHAR2(5),
	  CONSTRAINT     staff_5 UNIQUE (user_id)
    );

ALTER TABLE staff
ADD CONSTRAINT staff_4
FOREIGN KEY (user_id) REFERENCES login(user_id);

INSERT INTO staff VALUES ('B0001', 'Raj', 'Patel', 9898989898, 'raj@lib.com', 'Ahmedabad', 'A0001');
INSERT INTO staff VALUES ('B0002', 'Deep', 'Sharma', 7878787878, 'deep@lib.com', 'Surat', 'A0002');
INSERT INTO staff VALUES ('B0003', 'Arth', 'Shah', 6868686868, 'arth@lib.com', 'Anand', 'A0003');
INSERT INTO staff VALUES ('B0004', 'Hemant', 'Shah', 6898689868, 'hemant@lib.com', 'Nadiad', 'A0004');