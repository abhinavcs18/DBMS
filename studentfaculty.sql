create database student;
create table student(snum int, sname varchar(20), major varchar(20), lvl varchar(20), age int, primary key(snum));
create table faculty
(

	fid int,
    fname varchar(20),
    deptid int,
    primary key(fid)
);
create table class
(
	cname varchar(20),
    meets_at varchar(20),
    room varchar(20),
    fid int,
    primary key(cname)
);
create table enrolled
(
	snum int,
    cname varchar(20),
    primary key(snum,cname),
    foreign key(snum) references student(snum), foreign key(cname) references class(cname)
);
insert into student values
(1,'Adith','cs','jr',19),
(2,'Ajay','cs','sr',20),
(3,'Salman','cv','sr',20),
(4,'Kartik','cs','jr',19),
(5,'Abhi','cs','sr',19);
insert into class
values
('dbms','8:55','401',1000),
('maths','9:50','402',1002),
('ada','11:15','402',1003),
('evs','12:10','404',1005),
('os','2:00','401',1001);
insert into enrolled
values
(1,'dbms'),
(2,'ada'),
(3,'maths'),
(4,'evs'),
(5,'os');
insert into faculty 
values
(1000,'harsh',11), 
(1001,'preeti',13),
(1002,'girish',14),
(1003,'sneha',16),
(1005,'sahil',15);

select snmae 
from student, faculty 
where lvl='jr' and ;
