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

--DELETE
--Команда delete не позволяет удалить значение одного столбца или группы столбцов.
--Команда delete удаляет из таблицы одну или несколько записей (в зависимости от условия where).
--Мы рассмотрели пример удаления одной записи из таблицы. Также возможно удаление сразу нескольких записей.
--Для этого критерий выбора удаляемых записей определяется при помощи условия WHERE.
--Будьте осторожны — следующая команда удаляет из таблицы все записи: DELETE FROM yourtable
delete from my_contacts where first_name in('tesafdft');

--delete one element
delete from my_contacts where email  = 'sdf' and gender = 's';

--UPDATE (update table_name SET имя^столбца = новое__значение WHERE имя__столбца = старое^значение)
update my_contacts set email = 'cocojambo@gmail.com' where email is null and birthday = '1999-09-09';
update my_contacts set email = 'ccorleon@gmail.com', first_name = 'testing' where email is null and gender is null;
update my_contacts set first_name = first_name + 1 where first_name is null and gender is null; --(used by + 1 only int)
select * from my_contacts;
