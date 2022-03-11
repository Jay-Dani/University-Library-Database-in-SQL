CREATE TABLE login
    ( user_id		VARCHAR2(5)		 CONSTRAINT     login_1  NOT NULL PRIMARY KEY,
      password		VARCHAR2(7)		 CONSTRAINT     login_2  NOT NULL
    );

INSERT INTO login VALUES ('A0001', 'dbms1');
INSERT INTO login VALUES ('A0002', 'dbms2');
INSERT INTO login VALUES ('A0003', 'dbms3');
INSERT INTO login VALUES ('A0004', 'dbms4');