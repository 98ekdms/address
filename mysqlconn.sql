show databases;

create table telbook(
tb_id int not null primary key auto_increment,
tb_name varchar(15) not null,
tb_tel varchar(15) not null,
REGDATE DATE
);



create table addrbook(
ab_id int(11) not null auto_increment,
ab_name varchar(15) not null,
ab_email varchar(50) DEFAULT NULL,
ab_comdept varchar(20) not null,
ab_tel varchar(20) default null,
ab_memo varchar(100) default null,
primary key (ab_id)
);


show tables;

create table board(
 num int not null primary key auto_increment,
 writer varchar(10) not null,
 email varchar(30),
 subject varchar(50) not null,
 passwd varchar(12) not null,
 reg_date datetime not null,
 readcount int default 0,
 ref int not null,
 re_step smallint not null,
 re_level smallint not null,
 content text not null,
 ip varchar(20) not null
);

drop table addressbook;

select * from addressbook; 


create table addressbook(
tel varchar(15) primary key,
name varchar(10) not null,
email varchar(20) not null,
birth varchar(20) not null,
company varchar(20) default null,
memo varchar(40) default null,
ragdate date 
);

select * from addressbook;
select * from addressbook order by tel;
select * from addressbook;

select 

select tel from addressbook;
select tel from addressbook where tel=1111;
delete from addressbook where company="구글";

select * from tel;

