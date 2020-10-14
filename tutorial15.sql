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

--UNION(Союзы)
--1) Количество столбцов в командах select должно быть одинаковым. Нельзя выбрать два столбца одной 
--командой и еще один столбец другой.
--2) Команды SELECT должны содержать одинаковые выражения и агрегатные функции.
--3) Команды SELECT могут следовать в любом порядке; на результаты это не влияет.
--4) По умолчанию SQL исключает дубликаты из результатов союзов
--5) Типы данных в столбцах должны либо совпадать, либо быть совместимыми.
--6) Если вы по какой-то причине ХОТИТЕ получить список со всеми дубликатами, используйте оператор UNION ALL.
--Он возвращает все совпадения, не только уникальные
select id from smart_notes
union
select id from images order by id;

--UNION ALL
select id from smart_notes 
union all
select notes_id from images;

--INTERSECT возвращает данные из результатов первого запроса, которые также присутствуют во втором запросе.
select id from smart_notes 
intersect
select notes_id from images;

--EXCEPT возвращает только те значения, которые присутствуют в результатах первого запроса,
--но не встречаются в результатах второго.
select id from smart_notes 
except
select notes_id from images;