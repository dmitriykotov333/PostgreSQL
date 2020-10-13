--create table smart_notes (
--	id serial primary key not null,
--	title varchar(100),
--	description text,
--	create_date timestamp NOT NULL,
--  update_date timestamp NOT NULL,
--	fixed_note boolean default(false)
--);
--create table images (	
--	id serial primary key not null,
--	image bytea NOT NULL,
--	create_date timestamp NOT NULL,
--	update_date timestamp NOT NULL,
--	notes_id int not null references smart_notes(id)
--);
--ADD ONLY IMAGE
--create note
--insert into smart_notes (create_date, update_date) values ('2020-10-12 01:22:41', '2020-10-12 01:22:41');
--add image 
--insert into images (image, create_date, update_date, notes_id) 
--	values ('21321312313', '2020-10-12 01:37:41', '2020-10-12 01:37:41', 1);

-- AS - псевдоним таблиц
select create_date as cr_date from smart_notes as s_notes group by cr_date;

select sm.title, i.create_date, i.notes_id from smart_notes as sm inner join images as i on i.notes_id = sm.id;

--CROSS JOIN
--Перекрестное соединение (CROSS JOIN) возвращает комбинации каждой записи первой таблицы с каждой записью
--второй таблицы.
select sm.title, i.create_date from smart_notes as sm cross join images as i;

--INNER JOIN
--Внутренним соединением (INNER JOIN) называется перекрестное соединение из результатов которого
--часть записей исключается по условию запроса.
select * from smart_notes as sm inner join images as i on sm.id = i.notes_id;

