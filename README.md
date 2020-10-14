# PostgreSQL
- Tutorial 1 - create database
- Tutorial 2 - create, drop, insert
- Tutorial 3 - NOT NULL, default
- Tutorial 4 - SELECT
Part1: WHERE, AND, OR, LIKE(%, _), BETWEEN
Part2: IN, NOT IN, NOT
- Tutorial 5 - DELETE, UPDATE
- Tutorial 6 - ALTER ADD, DROP, RENAME TO 
- Tutorial 7 - CASE 
- Tutorial 8 - ORDER BY, ORDER BY COLUMN_NAME DESC
- Tutorial 9 - SUM, ORDER BY SUM, AVG GROUP BY
- Tutorial 10 - MIN, MAX, COUNT, LIMIT, DISTINCT
- Tutorial 11 - AS, CROSS JOIN, INNER JOIN
- Tutorial 12 - SUBQUERY, EXISTS, NOT EXISTS

#### Атомарность:
  - ПРАВИЛО 1. Столбец, содержаищй атомарные данные, не может состоять из нескольких однотипных элементов.

| food_name	| ingredients | 
| ------------- | ------------- |
| хлеб |	мука, молоко, яйца, масло |
| салат |	огурцы, помидоры |
  - ПРАВИЛО 2. Таблица с атомарными данными не может содержать несколько однотипных столбцов.

| teacher	| student1 | student2 | 
| ------------- | ------------- |------------- |
| Миссис Мартини |	DGO |  RROn |
| ГоВард |	Coolon | Gray |
#### Первичный ключ — столбец таблицы, имеющий уникальное значение для каждой записи.
> Первичный ключ не может содержать NULL. Значение NULL не может быть уникальным, потому что в других записях этот столбец тоже может содержать NULL.

#### Внешний ключ - столбец таблицы, в котором хранятся значения ПЕРВИЧНОГО КЛЮЧА другой таблицы.
> Первичный ключ, используемый внешним ключом, также называется родительским ключом. Таблица, которой принадлежит первичный ключ, называется родительской таблицей.
> Внешний ключ может использоваться для установления соответствия между записями двух таблиц.
> Внешний ключ может содержать значения NULL, хотя в первичном ключе они запрещены.
> Значения внешнего ключа не обязаны быть уникальными — более того, чаще они уникальнымине являются.

#### Составной ключ - называется ПЕРВИЧНЫЙ КЛЮЧ, состоящий из нескольких столбцов, комбинация которых образует уникальные значения.
#### Транзитивные функциональные зависимости
> Если изменение не-ключевого столбца может привести к изменению других столбцов, значит, существует транзитивная зависимость.
> Транзитивная функциональная зависимость: не-ключевой столбец связан 
с другими пе-ключевыми столбцами.
# Связи тиблиц 
- #### один-к-одному
> Ровно одна запись родительской таблицы связывается с одной записью дочерной таблицы.
- #### один-ко-многим
> Запись одной таблицы может быть связана со многими записями другой таблицы но каждая запись последней может быть связана только с одной записью в первой.
<img src="https://github.com/dmitriykotov333/PostgreSQL/blob/main/images/one-to-many.png" width="60%" height="30%">

- #### многие-ко-многим
> Две таблицы связываются через соединительную таблицу, благодаря чему многие записи первой таблицы могут быть связаны со многими записями второй, и наоборот.
<img src="https://github.com/dmitriykotov333/PostgreSQL/blob/main/images/many-to-many.PNG" width="80%" height="50%">


# 1НФ (Первая нормализованная форма)
Таблица, находящаяся в форме 1НФ, должна выполнять следующие два правила.
- Каждая запись должна содержать атомарные значения.
- Каждая запись должна обладать уникальным идентификатором, который называется первичным ключом.
# 2НФ (Вторая нормализованная форма)
Таблица, находящаяся в форме 2НФ, должна выполнять следующие правила.
- Таблица находится в 1НФ. 
- Таблица не имеет частичных функциональных зависимостей.
# 3НФ (Третья нормализованная форма)
Таблица, находящаяся в форме 3НФ, должна выполнять следующие правила.
- Таблица находится в 2НФ. 
- Таблица не имеет транзитивных зависимостей.
