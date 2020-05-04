create database supplying;
use supplying;
create table suppliers(sid int,sname varchar(30),city varchar(40),primary key(sid));
create table parts(pid int,pname varchar(30),color varchar(30),primary key(pid));
create table catalog(sid int,pid int,cost int,PRIMARY KEY(sid,pid), FOREIGN KEY(sid) references suppliers(sid),foreign key(pid) references parts(pid));
insert into suppliers values('10001','Acme widget','Bangalore'),('10002','johns','kolkata'),('10003','vimal','mumbai'),('10004','Reliance','Delhi');
select * from suppliers;
insert into parts values('20001','book','red'),('20002','pen','red'),('20003','pencil','green'),('20004','mobile','green'),('20005','charger','black');
insert into catalog values('10001','20001',10);
insert into catalog values('10001','20002',10),
('10001','20003',30),
('10001','20004',10),
('10001','20005',10),
('10002','20001',10),
('10002','20002',20),
('10003','20003',30),
('10004','20003',40);

select sid from suppliers,parts where parts.color='red' or parts.color='green';

select distinct suppliers.sid from suppliers,parts,catalog where suppliers.sid=catalog.sid and catalog.pid=parts.pid and (parts.color='red' or suppliers.city='bangalore');

select distinct c1.sid,c2.sid from catalog c1, catalog c2 where c1.pid=c2.pid and c1.cost>c2.cost;

select distinct suppliers.sid from suppliers,parts,catalog where suppliers.sid=catalog.sid and catalog.pid=parts.pid and (parts.color='red');