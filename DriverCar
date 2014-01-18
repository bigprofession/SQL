drop table driver;
drop table car;
drop table driver_admin;

create table driver (driver_id varchar2(6) not null,
name varchar2(30) not null,
address1 varchar2(25) not null,
address2 varchar2(25),
address3 varchar2(25),
pcode varchar2(8) not null,
tel_no varchar2(12),
no_cars number(2))
/
create table car (car_id varchar2(6) not null,
driver_id varchar2(6) not null,
car_make varchar2(20) not null,
colour varchar2(10) not null,
date_purchased date not null)
/
create table driver_admin(Driver_id varchar2(6) not null,
name varchar2(6) not null,
no_cars varchar2(6));
/		  
insert into driver
values ('A10l98','John','1 Hamps Rd','Creat','York','YN1 K2','0131 923 4567','32');
insert into driver
values ('A23408','Millie','4 Driveway Rd','Crest Hill','York','MN2 U87','0161 6534','33');

insert into car
values ('HON45','A10198','Honda','Blue','12-jan-2000');
insert into car
values ('FER67','A23408','Ferrari','Red','19-jan-2002');

commit;
