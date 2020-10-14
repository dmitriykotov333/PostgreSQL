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

--SUBQUERY
--1
select im.id, im.create_date, sm.id, sm.title, sm.create_date from images as im 
	inner join smart_notes as sm on sm.id = im.notes_id 
		where notes_id = (select id from smart_notes where create_date = '2020-10-12 01:22:41');

--2
select notes_id from images  
		where notes_id = (select id from smart_notes where create_date = '2020-10-12 01:22:41');		

--EXISTS
--1
select * from smart_notes as sm where exists (select * from images as im where sm.id = im.notes_id);

--2
select notes_id from images as im where exists (select * from smart_notes as sm where sm.id = im.notes_id);

--NOT EXISTS
select notes_id from images as im where not exists (select * from smart_notes as sm where sm.id = im.notes_id);