-- создание таблицы
create table my_contacts (
	last_name varchar(30),
	first_name varchar(20),
	email varchar(50),
	gender varchar(1),
	birthday date,
	profession varchar(50),
	location varchar(50),
	status varchar(20),
	interest varchar(100),
	seeking varchar(100)
)
-- удаление таблицы
drop table my_contacts;
-- вставка в таблицу (модификация команды insert)
--1
insert into my_contacts 
	(last_name, first_name, email, gender, birthday, profession, location, status, interest, seeking)
values
	('test', 'test', 'test', 't', '1999-09-09', 'test', 'test', 'test', 'test', 'test');
--2
insert into my_contacts 
	(birthday, first_name, email, gender, last_name, profession, location, status, interest, seeking)
values
	('1999-09-09', 'test', 'test', 't', 'test', 'test', 'test', 'test', 'test', 'test');
--3
insert into my_contacts values ('test', 'test', 'test', 't', '1999-09-09', 'test', 'test', 'test', 'test', 'test');
--4
insert into my_contacts 
	(birthday)
values
	('1999-09-09');
-- вывод таблицы
select * from my_contacts
