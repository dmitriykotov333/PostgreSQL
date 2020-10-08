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
-- Звездочка (*) приказывает РСУБД вернуть значения всех столбцов таблицы.
select * from my_contacts where gender = 'g';
select last_name, profession, birthday from my_contacts where gender = 'g';
select last_name, profession, birthday from my_contacts;

--AND (<> (!=))
select last_name, profession, birthday from my_contacts where gender <> 'g' and last_name = 'test';

--OR
select last_name, profession, birthday, gender from my_contacts where gender ='g' or last_name = 'test';

--check on null
select * from my_contacts where profession is null;

-- LIKE используется со специальными символами. 
-- знак % — обозначает любое количество произвольных символов.
select * from my_contacts where last_name like '%dfadf';
--Запрос возвращает имена, которые состоят из любого количества символов и заканчиваются на dfadf

-- знак _ 
select * from my_contacts where last_name like '_est';
--Запрос возвращает имена, которые состоят из одной буквыи test

--BETWEEN
select * from my_contacts where last_name between 0 and 1;