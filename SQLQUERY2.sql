CREATE table students (
studentID int identity (1,1)primary key,
Nam VARCHAR (250) not null,
Email VARCHAR (100)		NOT null unique,
Age int check (Age >=16),
Country VARCHAR (100)  DEFAULT 'EGYPT'
);
--select *from students;
CREATE table courses (
CoursID int identity (1,1)primary key,
coursname VARCHAR (250) not null,
category VARCHAR (100),
price decimal (10,2) CHECK (price>0));
--select *from courses;
CREATE table enrollments (
enrollmentID int identity (1,1)primary key,
 studentID int not null
FOREIGN KEY REFERENCES students(studentID),
CoursID int not null
FOREIGN KEY REFERENCES courses(CoursID)
);
--select *from enrollments;
INSERT INTO students (Nam,Email,Age,Country) VALUES ('KHOLOUD', 'KHOULOUD.@.COM',19,'EGYPT'),
('KHOLOUD', 'KHOULOUD.@.GIMAIL.COM',29,'USA'),('HUSSEIN', 'HUSSEIN.@.COM',50,'EGYPT'),
('MAYAN', 'MAYAN.@.COM',17,'EGYPT');
--select *from students;
INSERT INTO courses(price,category,coursname) VALUES (1000.00,'IHSLDA','IT206'),
(10000.00,'IHSLDK','IT207'),(2000.00,'FJDHTMK','IT205');
INSERT INTO  enrollments(studentID,CoursID) VALUES(1,1),(2,1),(2,3),(3,1),(4,3);
 SELECT*FROM students where Country='USA' order by Age;
 SELECT*FROM students where Age BETWEEN 20 and 30;
 alter table students add createddate DATETIME default GETDATE();
 select price as course_price from courses;
 select top 3 *from enrollments;
