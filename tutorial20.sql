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


--CREATE PROCEDURE insert_data(a bytea, b timestamp, id int, title varchar(100))
--LANGUAGE SQL
--AS $$
--INSERT INTO images (image, create_date, update_date, notes_id) VALUES (a, b, b, id);
--INSERT INTO smart_notes (title, create_date, update_date) VALUES (title, b, b);
--$$;
--CALL insert_data('1232132132131232', '2020-12-12', '2020-12-12', dup('2020-10-17 08:06:41'));


--CREATE PROCEDURE get_date(date timestamp)
--LANGUAGE SQL
--AS $$
--select id from smart_notes where create_date = date;
--$$;
--select * from smart_notes;

--CREATE FUNCTION dup(date timestamp) RETURNS integer
 -- LANGUAGE SQL
  --  AS $$ 
--	select id from smart_notes where create_date = date;
--	$$;
--insert into smart_notes (title, create_date, update_date) values('asasa', '2020-10-17 08:06:41', '2020-10-17 08:06:41');
--select * from dup('2020-10-17 08:06:41');