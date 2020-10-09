create table my_contacts (
	id serial primary key,
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
);

--ALTER ADD
alter table my_contacts add column price int ;

--ALTER RENAME TO
alter table my_contacts rename to project_list;

--ALTER DROP
alter table project_list drop column  price;
select * from project_list;
