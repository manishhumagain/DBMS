-- Active: 1782960704391@@127.0.0.1@3306@test_db
create database test_db;

use test_db;

create table students(
  id int primary key,
  name varchar(255),
  age int,
  phone_number varchar(255) NOT NULL,
  email varchar(255) UNIQUE NOT NULL
)

show tables;



insert into students values (1,'Ram ',13,'9829273500','ram@gmail.com');
insert into students values (2,'Sita',14,'9829455000','sita@gmail.com');

select * from students;
