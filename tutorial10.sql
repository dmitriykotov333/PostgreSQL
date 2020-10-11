--1
--create table my_contacts (
--	id serial primary key,
--	last_name varchar(30),
--	first_name varchar(20),
--	email varchar(50),
--	gender varchar(1),
--	birthday date,
--	profession varchar(50),
--	location varchar(50),
--	status varchar(20),
--	interest varchar(100),
--	seeking varchar(100)
--);

--MAX
select first_name, max(price) from project_list group by first_name;

--MIN
select first_name, min(price) from project_list group by first_name;

--COUNT
--Функция COUNT возвращаетколичество записей в столбце.
select count(price) from project_list group by first_name;
select count(price) from project_list

--DISTINCT (ключевое слово, а не функция, не содержащий дубликатов)
select distinct birthday from project_list;

--LIMIT
select first_name, min(price) from project_list group by first_name limit 3;
select first_name, min(price) from project_list group by first_name limit 5 offset 0;