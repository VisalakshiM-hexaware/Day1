create database leave_mgmt;

drop database leave_mgmt;

create database lms_db;

create database lms_db;

use lms_db;

create table emp (id int);

desc emp;

insert into emp value(7);

select id from emp;

drop table emp; 

create table emp( id int, name varchar(40), doj date);

desc emp;

insert into emp values(7,"Harry","1995-07-31");

show databases;

insert into emp values(12,"Hermione","1995-09-13");

select * from emp;

insert into emp values(3,"Ron","1995-04-25");

desc emp;

drop table emp;

create table emp_details(id int, ename varchar(20), city varchar(20) default "CHENNAI");

insert into emp_details(id, ename) values (7, "Harry");

select * from emp_details;

insert into emp_details(id, ename, city) values (13, "Hermione", "MUMBAI");

select * from emp_details;

update emp_details set city="PUNE" where id=7;

delete from emp_details where id=13;

select*from emp_details;

insert into emp_details(id, ename) values (12, "Hermione");

insert into emp_details value(3,"Ron","MUMBAI");

insert into emp_details value(4,"Neville","PUNE");

insert into emp_details value(5,"Ginny","MUMBAI");

insert into emp_details value(6,"Luna","CHENNAI");

select*from emp_details;

select * from emp_details where city="CHENNAI";

select * from emp_details order by id asc;

alter table emp_details add(age int);

desc emp_details;

select * from emp_details where city IN ("CHENNAI","PUNE");

insert into emp_details (age) values (21),(21),(22),(24),(25),(26);

select * from emp_details;

delete from emp_details where age in (21,22,24,25,26);

select*from emp_details;

alter table emp_details add primary key(id);

alter table emp_details modify ename varchar(20) not null;
desc emp_details;

select count(*) from emp_details where city="CHENNAI";

alter table emp_details modify id int auto_increment;
select * from emp_details;
insert into emp_details(ename,age) values ("Albus",98);
update emp_details set age=24 where city="MUMBAI";
update emp_details set age=98 where id=13;

alter table emp_details add (salary int);
update emp_details set salary=2500 where age=24;
update emp_details set salary=3500 where city="PUNE";
update emp_details set salary=4000 where city="CHENNAI";

alter table emp_details add constraint u1 unique(id);
alter table emp_details drop index u1;

alter table emp_details modify id int unique;
alter table emp_details modify id int;
desc emp_details;
 
create table users(
uid int primary key auto_increment,
name varchar(20),
email varchar(100) not null,
password varchar(50) not null,
active int default 0,
activation_key varchar(50) default '4567',
created_date timestamp not null default current_timestamp,
modified_date timestamp on update current_timestamp, 
unique(email)
);

insert into users(name,email,password)values("Amara","amkaul@gmail.com","pp26");
update users set active=1 where email="amkaul@gmail.com" and activation_key='4567';
select*from users;
desc users;

create table ex(
eid int auto_increment primary key,
ename varchar(20),
exp_years int default 0,
salary int);
drop table ex;

insert into ex(ename,exp_years) values ("Amara",1);
insert into ex(ename,exp_years) values ("Zoryn",4);
insert into ex(ename,exp_years) values ("Tenacius",7),("Matthew",7),("Stasya",4),("Jessi",1);

select*from ex;

update ex set salary=100 where exp_years=1;
update ex set salary=400 where exp_years=4;
update ex set salary=700 where exp_years=7;














