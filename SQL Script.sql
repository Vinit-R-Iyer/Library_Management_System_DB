create database Assignment;
use Assignment;

show databases;
show tables;

create table Student_Library_Card (Student_ID varchar(20) not null, Student_Name varchar(40) not null, Issue_Date date not null, Return_Date date not null);
show tables;
drop table Student_Library_Card;
show tables;

create table Student_Library_Card (Student_ID varchar(20) not null, Student_Name varchar(40) not null, Issue_Date date not null, Return_Date date not null, constraint pk_SLC primary key(Student_ID));
create table Faculty_Library_Card (Faculty_ID varchar(20) not null, Faculty_Name varchar(40) not null, Issue_Date date not null, Return_Date date not null, constraint pk_FLC primary key(Faculty_ID));
create table Student (Student_ID varchar(20) not null, Student_Name varchar(40) not null, Contact_Number char(10) not null, Registration_Date date not null, Class_Details varchar(100), constraint pk_Student primary key(Student_ID));
create table Faculty (Faculty_ID varchar(20) not null, Faculty_Name varchar(40) not null, Designation varchar(100), Department varchar(100), Hire_Date date not null, Contact_Number char(10) not null, Salary int, constraint pk_Faculty primary key(Faculty_ID));
create table Book (ISBN varchar(20) not null, Book_Name varchar(100) not null, Category varchar(50), Publisher varchar(100), Cost_Price float, Author_1 varchar(20), Author_2 varchar(20), Author_3 varchar(20), constraint pk_Book primary key(ISBN));
create table Project_Report (Project_ID varchar(20) not null, Project_Name varchar(100) not null, Category varchar(50), Publisher varchar(100), Author_1 varchar(20), Author_2 varchar(20), Author_3 varchar(20), constraint pk_Project_Report primary key(Project_ID));
create table Journal (Journal_ID varchar(20) not null, Journal_Name varchar(100) not null, Category varchar(50), Publisher varchar(100), Author_1 varchar(20), Author_2 varchar(20), Author_3 varchar(20), constraint pk_Journal primary key(Journal_ID));

create table S_Borrows (Issue_Date date not null, Return_Date date not null);
create table F_Borrows (Issue_Date date not null, Return_Date date not null);
drop table S_Borrows;
drop table F_Borrows;

show tables;
describe table Faculty;

insert into Student_Library_Card values('19BSR06024', 'Vinit R Iyer', '2021-01-01', '2021-01-15');
insert into Student_Library_Card values('19BSR06043', 'Ashmitha Nagesh', '2021-02-01', '2021-02-15');
insert into Student_Library_Card values('19BSR06044', 'Aaron R Bradley', '2021-01-015', '2021-01-30');
insert into Student_Library_Card values('19BSR06016', 'R Bhargavi Prakalya', '2021-03-14', '2021-03-29');
insert into Student_Library_Card values('19BSR06022', 'Arsen', '2021-01-01', '2021-01-15');

insert into Faculty_Library_Card values('JGIJCP01', 'M Sudhakar Reddy', '2021-10-12', '2021-10-27');
insert into Faculty_Library_Card values('JGIJCP02', 'Asha Rajiv', '2021-11-12', '2021-11-27');
insert into Faculty_Library_Card values('JGIJCM01', 'Arathi Sudarshan', '2022-01-12', '2022-01-27');
insert into Faculty_Library_Card values('JGIJCM02', 'J V Ramanaraju', '2022-05-01', '2022-05-15');
insert into Faculty_Library_Card values('JGIJCCS01', 'B R Sampangi Rama Reddy', '2021-10-12', '2021-10-27');

insert into Student values('19BSR06024', 'Vinit R Iyer', '9820331239', '2019-06-15', 'BSc PMCs');
insert into Student values('19BSR06043', 'Ashmitha Nagesh', '9824241239', '2019-06-15', 'BSc PMCs');
insert into Student values('19BSR06044', 'Aaron R Bradley', '8820421239', '2019-06-15', 'BSc PMCs');
insert into Student values('19BSR06016', 'R Bhargavi Prakalya', '7210331239', '2019-06-15', 'BSc PMCs');
insert into Student values('19BSR06022', 'Arsen', '8420332139', '2019-06-15', 'BSc PMCs');

insert into Faculty values('JGIJCP01', 'M Sudhakar Reddy', 'Head of Department', 'Physics', '2010-06-01', '9820331348', 60000);
insert into Faculty values('JGIJCP02', 'Asha Rajiv', 'Director', 'Physics', '2010-06-01','9820331348', 100000);
insert into Faculty values('JGIJCM01', 'Arathi Sudarshan', 'Head of Department', 'Mathematics', '2010-06-01','9820331348', 60000);
insert into Faculty values('JGIJCM02', 'J V Ramanaraju', 'Professor', 'Mathematics', '2010-06-01', '9820331348', 55000);
insert into Faculty values('JGIJCCS01', 'B R Sampangi Rama Reddy', 'Head of Department', 'Computer Science and IT', '2010-06-01', '9820331348', 60000);

insert into Book values('JU835483', 'Simplified Mathematics', 'Education', 'S Chand', 220, 'G K Ranganath', '', '');
insert into Book values('JU837133', 'Simplified Physics', 'Education', 'Penguin Bookhouse', 740, 'El Matador', 'Aurobindo Ghosh', '');
insert into Book values('JU421083', 'Think and Grow Rich', 'Self Development', 'Penguin Bookhouse', 550, 'Napoleon Hill', '', '');
insert into Book values('JU832453', 'Simplified RDBMS', 'Education', 'Lozon Express', 375, 'Joe McMillan', '', '');
insert into Book values('JU853431', 'Atomic Habits', 'Self Development', 'The Gritz', 600, 'James Clear', '', '');

insert into Project_Report values('JUP001', 'Linear Regression Model', 'Machine Learning', 'Jain University', 'Vinit R Iyer', 'Ashmitha Nagesh', '');
insert into Project_Report values('JUP002', 'Logistic Regression Model', 'Machine Learning', 'Jain University', 'Vinit R Iyer', 'R Bhargavi Prakalya', 'Rakhi Kumari');
insert into Project_Report values('JUP003', 'Networking Models', 'Computer Networks', 'Jain University', 'Aaron R Bradley', 'Ashmitha Nagesh', 'Vinit R Iyer');
insert into Project_Report values('JUP004', 'Library Management System', 'RDBMS', 'Jain University', 'Vinit R Iyer', 'Ashmitha Nagesh', '');
insert into Project_Report values('JUP005', 'Decision Tree Algorithm', 'Machine Learning', 'Jain University', 'Ashmitha Nagesh', 'Vinit R Iyer', 'Aaron R Bradley');

insert into Journal values('JUJ001', 'Heat SHields', 'Engineering', 'Stanford University', 'Deepthi Narasimhan', 'Vinit R Iyer', 'Aravind Nagesh');
insert into Journal values('JUJ002', 'Rocket Trajectories', 'Engineering', 'Harvard University', 'Aaron R Bradley', 'Ashmitha Nagesh', 'Vinit R Iyer');
insert into Journal values('JUJ003', 'Navier Stokes Equation', 'Fluid Mechanics', 'Oxford University', 'Vinit R Iyer', 'Ashmitha Nagesh', 'Aaron R Bradley');
insert into Journal values('JUJ004', 'Increasing Qubits', 'Quantum Mechanics', 'Stanford University', 'Ashmitha Nagesh', '', '');
insert into Journal values('JUJ005', 'Extraterrestrial Civilizations', 'Astrobiology', 'Princeton University', 'Vivek Nagapatnam', 'Vinit R Iyer', 'Lara Mox');

create table S_Borrows (Article_ID varchar(20), Issue_Date date, Return_Date date);
create table F_Borrows (Article_ID varchar(20), Issue_Date date, Return_Date date);

insert into S_Borrows values('19BSR06024', '2021-01-01', '2021-01-15');
insert into S_Borrows values('19BSR06044', '2021-01-015', '2021-01-30');
insert into S_Borrows values('JGIJCM01', '2022-01-12', '2022-01-27');
insert into S_Borrows values('JGIJCCS01', '2021-10-12', '2021-10-27');
insert into S_Borrows values('19BSR06043', '2021-02-01', '2021-02-15');

drop table S_Borrows;

create table S_Borrows (Article_ID varchar(20), Issue_Date date, Return_Date date);

insert into S_Borrows values('JU832453', '2021-01-01', '2021-01-15');
insert into S_Borrows values('JU835483', '2021-02-01', '2021-02-15');
insert into S_Borrows values('JUP004', '2021-01-015', '2021-01-30');
insert into S_Borrows values('JUJ005', '2021-03-14', '2021-03-29');
insert into S_Borrows values('JUJ001', '2021-01-01', '2021-01-15');

drop table S_Borrows;
drop table F_Borrows;

create table S_Borrows (Article_ID varchar(20), Student_ID varchar(20), Issue_Date date, Return_Date date);

insert into S_Borrows values('JU832453', '19BSR06024', '2021-01-01', '2021-01-15');
insert into S_Borrows values('JU835483', '19BSR06043', '2021-02-01', '2021-02-15');
insert into S_Borrows values('JUP004', '19BSR06044', '2021-01-015', '2021-01-30');
insert into S_Borrows values('JUJ005', '19BSR06016', '2021-03-14', '2021-03-29');
insert into S_Borrows values('JUJ001', '19BSR06022', '2021-01-01', '2021-01-15');

create table F_Borrows (Article_ID varchar(20), Faculty_ID varchar(20), Issue_Date date, Return_Date date);

insert into F_Borrows values('JU837133', 'JGIJCP01', '2021-10-12', '2021-10-27');
insert into F_Borrows values('JUP002', 'JGIJCP02', '2021-11-12', '2021-11-27');
insert into F_Borrows values('JUP003', 'JGIJCM01', '2022-01-12', '2022-01-27');
insert into F_Borrows values('JUj002', 'JGIJCM02', '2022-05-01', '2022-05-15');
insert into F_Borrows values('JU853431', 'JGIJCCS01', '2021-10-12', '2021-10-27');

select * from Student_Library_Card;
select * from Faculty_Library_Card;
select * from Student;
select * from Faculty;
select * from Book;
select * from Project_Report;
select * from Journal;
select * from S_Borrows;
select * from F_Borrows;