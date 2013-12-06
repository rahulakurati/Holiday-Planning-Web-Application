CREATE TABLE tbl_user(
fname varchar(10),
lname varchar(10),
email varchar(15) PRIMARY KEY,
password varchar(10));

CREATE TABLE tbl_

select count(*) from tbl_user where email='rah@sjsu.edu' and password='123';
select * from tbl_user;

INSERT INTO tbl_User VALUES('Rahul','Akurati','rahul@sjsu.edu','123');

INSERT INTO tbl_tourtypes VALUES('1','Heart of Silicon Valley','Flight','San Jose',5,5349);


select * from tbl_tourtypes;

drop table tbl_user;

drop table tbl_tourtypes;
create table tbl_tourtypes(
tourid int PRIMARY KEY,
Description varchar(25),
Transport varchar(20),
location varchar(25),
Length int,
Price float);

create table tbl_points(
tourid int,
tourpointid int PRIMARY KEY,
tourpointdescription varchar(25));

create table tbl_tourtransport(
tourid int,
transportid int PRIMARY KEY,
transportdescription varchar(25));

create table tbl_picture(
tourid int,
tourpointid int,
picid int PRIMARY KEY,
picname varchar(25),
picdescription varchar(25),
picpath varchar(50));

create table tbl_order(
orderid int PRIMARY KEY,
email varchar(30),
tourid int,
status varchar(15));

select description,transport,length,price from tbl_tourtypes where location='san jose';