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


--alter table project_list add column price int not null default(1);

-- SUM
select sum(price) from project_list where first_name like 'Nikolay%';

-- ORDER BY SUM
select first_name, sum(price) from project_list group by first_name order by sum(price);

-- AVG GROUP BY
-- avg cуммирует все значения и делит на их количество 
select first_name, avg(price) from project_list group by first_name;
