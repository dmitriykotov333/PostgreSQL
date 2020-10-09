--create table my_contacts (
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
--)

--IN
select * from my_contacts where gender not in('g', 't');

-- NOT IN
select * from my_contacts where gender not in('g', 't');

-- NOT 
--Ключевое слово NOT может использоваться не только с IN , но и с BETWEEN и LIKE . Однако необходимо
--помнить, что NOT следует сразу ж е после WHERE.
select * from my_contacts where not first_name like '_est';
