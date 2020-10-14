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

--LEFT OUTER JOIN
--(возвращает запись независимо от того, есть у нее совпадение в другой таблице или нет)
--select * from smart_notes(left table) as sm left outer join images(right table) as im on sm.id = im.notes_id;
--Итак, левое внешнее соединение перебирает все записи левой таблицы (smart_notes) и ищет для каждой 
--соответствие среди записей правой таблицы (images).

insert into smart_notes (title, create_date, update_date) values ('test', '2020-10-12 01:22:41', '2020-10-12 01:22:41');
select * from smart_notes as sm left outer join images as im on sm.id = im.notes_id;

--RIGHT OUTER JOIN
select * from smart_notes as sm right outer join images as im on sm.id = im.notes_id;