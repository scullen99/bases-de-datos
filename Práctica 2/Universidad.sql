/* Universidad */

drop database if exists universidad;
create database universidad;
use universidad;

create table Student (
  Name varchar(15) not null,
  Student_number int not null,
  Class int not null,
  Major varchar(10) not null,
  constraint deptPK primary key(Student_number),
  constraint deptSK unique (Student_number)
);

create table Course (
  Course_name varchar(30) not null,
  Course_number varchar(20) not null,
  Credit_hours int not null,
  Department varchar(5) not null,
  constraint deptPK primary key(Course_number)
);

create table Section (
  Section_identifier int not null,
  Course_number varchar(20) not null,
  Semester int not null,
  Year int not null,
  Instructor varchar(30) not null,
  constraint deptPK primary key(Course_number),
  foreign key (Section_identifier) references Course (Course_number),
  foreign key (Section_identifier) references Grade_report (Section_identifier)
);

create table Prerequisite (
  Course_number varchar(20) not null,
  Prerequisite_number varchar(20) not null,
  constraint deptPK primary key(Prerequisite_number),
  foreign key (Course_number) references Course (Course_number)
  foreign key (Prerequisite_number) references Course (Course_number)
);

create table Grade_report (
  Student_number int not null,
  Section_identifier int not null,
  Grade varchar(2) not null,
  constraint deptPK primary key(Section_identifier)
);