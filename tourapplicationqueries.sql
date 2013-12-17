CREATE TABLE tbl_user(
fname varchar(10),
lname varchar(10),
email varchar(15) PRIMARY KEY,
password varchar(10));

CREATE TABLE tbl_

select count(*) from tbl_user where email='rah@sjsu.edu' and password='123';
select * from tbl_user;

INSERT INTO tbl_User VALUES('Rahul','Akurati','rahul@sjsu.edu','123');
INSERT INTO tbl_User VALUES('Rahul','Akurati','rahul@sjsu.edu','123');
select * from tbl_user

INSERT INTO tbl_tourtypes VALUES('1','Heart of Silicon Valley','Flight','San Jose',5,5349)
INSERT INTO tbl_tourtypes VALUES('2','The Big Apple','Flight','New York',6,7475);
INSERT INTO tbl_tourtypes VALUES('3','Centennial State','Train','New York',5,4557);
INSERT INTO tbl_tourtypes VALUES('4','The Shine State','Flight','Florida',7,9445);
INSERT INTO tbl_tourtypes VALUES('5','the City of Angels','Train','Los Angeles',5,5339);
INSERT INTO tbl_tourtypes VALUES('6','The Eternal City','Flight','Rome',10,12523);


select distinct location from tbl_tourtypes order by location;

drop table tbl_user;

drop table tbl_tourtypes;
create table tbl_tourtypes(
tourid int PRIMARY KEY,
Description varchar(25),
Transport varchar(20),
location varchar(25),
Length int,
Price float);

select tourid from tbl_tourtypes where description='Heart of Silicon Valley';

drop table tbl_points;
create table tbl_points(
tourpointid int IDENTITY(1,1) PRIMARY KEY,
tourid int,
tourpointdescription varchar(25));

insert into tbl_points values(1,'HP Pavillion');
insert into tbl_points values(1,'Spartan Stadium');
select tourpointid,tourpointdescription from tbl_points where tourid=(select tourid from tbl_tourtypes where location='San Jose');

drop table tbl_tourtransport;
create table tbl_tourtransport(
transportid int identity(1,1) PRIMARY KEY,
tourid int,
transportdescription varchar(25));

insert into tbl_tourtransport values(1,'Flight');
insert into tbl_tourtransport values(1,'Train');
insert into tbl_tourtransport values(1,'Bus');
insert into tbl_tourtransport values(1,'Rental Car');

select transportid,transportdescription from tbl_tourtransport where tourid=1;

create table tbl_picture(
tourid int,
tourpointid int,
picid int PRIMARY KEY,
picname varchar(25),
picdescription varchar(25),
picpath varchar(50));

drop table tbl_order;
create table tbl_order(
orderid int IDENTITY(1,1) PRIMARY KEY,
email varchar(30),
tourid int,
status varchar(15));

insert into tbl_order values('rahul@sjsu.edu',1,'confirmed');
insert into tbl_order OUTPUT INSERTED.orderid values('rahul@sjsu.edu',1,'confirmed')
select * from tbl_order;

select description,transport,length,price from tbl_tourtypes where location='san jose'
select distinct location,tourid from tbl_tourtypes order by location