CREATE TABLE fine
    ( issue_id		VARCHAR2(5),
      return_id    VARCHAR2(5),
      issue_date    DATE		CONSTRAINT	f_3	NOT NULL,
      return_date      DATE		CONSTRAINT	f_4	NOT NULL,
	  due_date      DATE		CONSTRAINT	f_5	NOT NULL,
	  roll_no	NUMBER(3)
    );

ALTER TABLE fine ADD CONSTRAINT f_1 PRIMARY KEY (issue_id,return_id);

ALTER TABLE fine
ADD CONSTRAINT f_2
FOREIGN KEY (roll_no) REFERENCES student(roll_no);

INSERT INTO fine VALUES ('I0002', 'R0001', TO_DATE('2000-02-17','YYYY-MM-DD'), TO_DATE('2000-02-26','YYYY-MM-DD'), TO_DATE('2000-02-27','YYYY-MM-DD'), 101);
INSERT INTO fine VALUES ('I0001', 'R0002', TO_DATE('2000-02-17','YYYY-MM-DD'), TO_DATE('2000-02-28','YYYY-MM-DD'), TO_DATE('2000-02-27','YYYY-MM-DD'), 100);
INSERT INTO fine VALUES ('I0003', 'R0003', TO_DATE('2000-02-19','YYYY-MM-DD'), TO_DATE('2000-03-05','YYYY-MM-DD'), TO_DATE('2000-03-01','YYYY-MM-DD'), 102);
INSERT INTO fine VALUES ('I0004', 'R0004', TO_DATE('2000-02-21','YYYY-MM-DD'), TO_DATE('2000-03-08','YYYY-MM-DD'), TO_DATE('2000-03-03','YYYY-MM-DD'), 100);
INSERT INTO fine VALUES ('I0005', 'R0005', TO_DATE('2000-03-01','YYYY-MM-DD'), TO_DATE('2000-03-04','YYYY-MM-DD'), TO_DATE('2000-03-11','YYYY-MM-DD'), 103);
INSERT INTO fine VALUES ('I0007', 'R0006', TO_DATE('2000-03-05','YYYY-MM-DD'), TO_DATE('2000-04-14','YYYY-MM-DD'), TO_DATE('2000-03-15','YYYY-MM-DD'), 105);
INSERT INTO fine VALUES ('I0008', 'R0007', TO_DATE('2000-03-25','YYYY-MM-DD'), TO_DATE('2000-04-15','YYYY-MM-DD'), TO_DATE('2000-04-04','YYYY-MM-DD'), 101);
INSERT INTO fine VALUES ('I0009', 'R0008', TO_DATE('2000-04-02','YYYY-MM-DD'), TO_DATE('2000-04-17','YYYY-MM-DD'), TO_DATE('2000-04-12','YYYY-MM-DD'), 106);
INSERT INTO fine VALUES ('I0006', 'R0009', TO_DATE('2000-04-03','YYYY-MM-DD'), TO_DATE('2000-04-18','YYYY-MM-DD'), TO_DATE('2000-04-13','YYYY-MM-DD'), 104);
INSERT INTO fine VALUES ('I0010', 'R0010', TO_DATE('2000-04-05','YYYY-MM-DD'), TO_DATE('2000-04-18','YYYY-MM-DD'), TO_DATE('2000-04-15','YYYY-MM-DD'), 108);
INSERT INTO fine VALUES ('I0011', 'R0011', TO_DATE('2000-04-06','YYYY-MM-DD'), TO_DATE('2000-04-25','YYYY-MM-DD'), TO_DATE('2000-04-16','YYYY-MM-DD'), 101);
INSERT INTO fine VALUES ('I0012', 'R0012', TO_DATE('2000-04-08','YYYY-MM-DD'), TO_DATE('2000-04-30','YYYY-MM-DD'), TO_DATE('2000-04-18','YYYY-MM-DD'), 102);