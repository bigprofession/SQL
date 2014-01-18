drop table member_loan;
drop table reservation;
drop table vid_copy;
drop table member;
drop table video;

create table member
(mem_code     number(6) not null primary key,
mem_surname   varchar2(25) not null,
mem_forename  varchar2(15) not null,
mem_add1      varchar2(30) not null,
mem_add2      varchar2(30) not null,
mem_add3      varchar2(30),
mem_add4      varchar2(30),
mem_pcode     varchar2(8) not null,
mem_telno     varchar2(14),
mem_dob       date not null,
mem_regdate   date not null,
mem_expdate   date not null);

create index memsur_idx on member(mem_surname);

create table video
(vid_code     number(6) not null primary key,
vid_title     varchar2(50) not null,
vid_distrib   varchar2(15) not null,
vid_rating    varchar2(2) not null,
vid_cat       varchar2(15),
vid_reldate   date,
vid_instock   number(2) not null);

create index vid_title_idx on video(vid_title);

create table vid_copy
(copy_code    number(4) not null primary key,
copy_vidcode  number(6) not null references video(vid_code),
copy_pdate    date,
copy_reserve  char(1));

create index cvidcode_idx on vid_copy(copy_vidcode);

create table reservation
(res_copycode number(4) not null references vid_copy(copy_code),
res_memcode   number(6) not null references member(mem_code),
res_date      date not null,
primary key(res_copycode, res_memcode));

create index rvcode_idx on reservation(res_copycode);

create table member_loan
(mloan_ccode number(4) not null
    references vid_copy(copy_code),
mloan_issdate date not null,
mloan_isstime char(8) not null,
mloan_memcode number(6) not null
    references member(mem_code),
mloan_duedate date not null,
mloan_duefine number(6,2),
primary key (mloan_ccode,mloan_issdate,mloan_isstime));

create index duedate_idx on member_loan(mloan_duedate);

insert into member
values ('100001','Carter','John Peter','53 The Avenue','Ashbrooke',
'Sunderland','Tyne + Wear','SR2 7EZ','0191-541-0393','04-OCT-62',
'01-JAN-96','31-JAN-97');

insert into member
values('100002','Dixon','Robert','12 Western Avenue','Durham','County Durham',
NULL,'DR4 6ED','0143-657-5431','09-DEC-50','12-NOV-95','11-NOV-96');

insert into member
values ('100003','Cartwright','Peter','12 Alberton Drive','Benwell',
'Sunderland','Tyne + Wear','SR5 7ET','0191-515-0657','30-OCT-59',
'01-FEB-96','28-FEB-97');

insert into member
values ('100004','Jones','Sally','24 Smith Street','Fenham',
'Newcastle','Tyne + Wear','NE17 5PY','0191-515-3456','12-JUN-70',
'12-JAN-95','12-FEB-97');

insert into member
values ('100005','Robinson','Linda','24 James Street','Ryehope',
'Sunderland','Tyne + Wear','SR3 2BN','0191-513-6785','03-JAN-72',
'02-MAR-96','31-MAR-97');

insert into member
values ('100006','Rogers','Simon','2 Bartholemew Drive','Grangetown',
'Sunderland','Tyne + Wear','SR8 5NY','0191-234-9865','18-OCT-54',
'10-AUG-96','31-AUG-97');

insert into member
values ('100007','Maxwell','Jane','17 Elm Bank Road','NULL',
'SunderlandD','Tyne + Wear','SR5 7ME',null ,'06-JUN-77',
'15-APR-96','30-APR-97');

insert into member
values ('100008','Thompson','Keith','22 Sherwood Avenue','NULL',
'East Rainton','Tyne + Wear','DH5 6TR','0191-517-7089','05-FEB-65',
'01-SEP-96','31-AUG-97');

insert into member
values ('100009','Gibson','Mel','45 Rowan Lane', 'Grangetown',
'Sunderland','Tyne + Wear','SR6 6YB','0191-356-5749','02-JUL-53',
'30-JUL-95','31-JUL-96');

insert into member
values ('100010','Ahmed','Mohammed','12 Regent Terrace', 'NULL',
'Durham','County Durham','DH6 2NT','0191-234-9865','02-APR-71',
'01-JAN-95','31-DEC-95');

insert into video
values('200001','Phantoms','Guild','18','Horror','01-MAR-94',3);

insert into video
values('200002','Night of the Hawks','Jettisoundz','E','Music','01-APR-96',2);

insert into video
values('200003','Man with Two Brains','Warner','15','Comedy','16-JUN-86',1);

insert into video
values('200004','Jurassic Park','Tristar','PG','Action','20-FEB-95',2);

insert into video
values('200005','High Noon','MGM','U','Western','22-FEB-86',2);

insert into video
values('200006','Star Trek Generations','Columbia','PG','Science Fiction','22-FEB-92',5);

insert into video
values('200007','Home Alone','Universal','U','Mystery','12-JAN-91',3);

insert into video
values('200008','Superman III','United Artists','PG','Comedy','01-JUN-86',3);

insert into video
values('200009','Robocop II','Tristar','18','Science Fiction','30-APR-93',2);

insert into video
values('200010','Babe','Walt Disney','U','Comedy','04-JUN-95',6);

insert into video
values('200011','Deep Space 9','MGM','PG','Science Fiction','15-MAY-94',3);

insert into vid_copy
values('1101','200001','18-MAR-95','Y');

insert into vid_copy
values('1102','200001','27-OCT-95',NULL);

insert into vid_copy
values('1103','200001','10-JUN-96',NULL);

insert into vid_copy
values('1104','200002','11-DEC-90',NULL);

insert into vid_copy
values('1105','200002','19-SEP-96',NULL);

insert into vid_copy
values('1106','200003','27-JUL-91',NULL);

insert into vid_copy
values('1107','200004','04-JUL-96',NULL);

insert into vid_copy
values('1108','200006','13-APR-93',NULL);

insert into member_loan 
values('1107','03-APR-97','00:15:15','100001','04-JUN-98',0);

insert into member_loan 
values('1101','06-AUG-96','00:20:12','100008','11-JUL-96',0);

insert into member_loan 
values('1108','15-JUL-96','12:45:00','100001','21-JUN-98',10);

insert into member_loan 
values('1104','15-AUG-96','14:22:00','100007','15-SEP-96',5);


insert into reservation
values('1101','100001','15-JUN-96');

insert into reservation
values('1108','100010','12-JUL-96');

insert into reservation
values('1107','100009','16-SEP-96');

commit;
