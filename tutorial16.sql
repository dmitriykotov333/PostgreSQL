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

--CREATE VIEW (аналогия метода, который постоянно при вызове выполняет нужное условие, 
--чтобы не писать код много раз заново когда потребуется)
create view shows 
	as select sm.id, im.notes_id from smart_notes as sm inner join images as im on sm.id = im.notes_id;	
select * from shows;