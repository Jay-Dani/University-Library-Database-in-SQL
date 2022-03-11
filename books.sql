CREATE TABLE books
    ( book_id		NUMBER(4)		CONSTRAINT	b_1	PRIMARY KEY,
      book_name     VARCHAR2(50)	CONSTRAINT	b_2	NOT NULL,
      publisher     VARCHAR2(50), 
      copies        NUMBER(3)		CONSTRAINT	b_3	NOT NULL,
      a_copies		NUMBER(3)		CONSTRAINT	b_4	NOT NULL,
      category      VARCHAR2(25),
      author        VARCHAR2(50),
      staff_id      VARCHAR2(5)		CONSTRAINT	b_7	NOT NULL,
	  CONSTRAINT     b_6  CHECK (a_copies<=copies)
    );

ALTER TABLE books
ADD CONSTRAINT b_5
FOREIGN KEY (staff_id) REFERENCES staff(staff_id);

INSERT INTO books VALUES (1001, 'Harry Potter-1', 'Bloomsbury', 5, 3, 'Novel', 'JK Rowling', 'B0001');
INSERT INTO books VALUES (1002, 'Parallel processing', 'GTU', 6, 4, 'OS', 'Khyati Gohil', 'B0002');
INSERT INTO books VALUES (1003, 'Lord of Rings', 'De Haan', 3, 2, 'Novel', 'abc', 'B0001');
INSERT INTO books VALUES (1004, 'CBOT', 'Thakur Publications', 6, 4, 'Knowledge', 'Gunjan Verma', 'B0003');
INSERT INTO books VALUES (1005, 'Arthashastra', 'xyz', 7, 6, 'History', 'Kautilya', 'B0002');
INSERT INTO books VALUES (1006, 'The complete referance', 'McGraw hill', 4, 3, 'Java', 'Herbert Schildt', 'B0001');
INSERT INTO books VALUES (1007, '1984', 'Secker and Warbug', 5, 5, 'Novel', 'George Orwell', 'B0004');
INSERT INTO books VALUES (1008, 'Rich Dad Poor Dad', 'Warner Books Ed', 6, 4, 'Financial Knowledge', 'Robert Kiyosaki and Sharon Lechter', 'B0003');
INSERT INTO books VALUES (1009, 'The Monk Who Sold His Ferrari', 'Harpen Collins', 3, 2, 'Novel', 'Robin Sharma', 'B0001');
INSERT INTO books VALUES (1010, 'Dune', 'Chilton Books', 6, 4, 'Science Fiction', 'Frank Herbet', 'B0002');