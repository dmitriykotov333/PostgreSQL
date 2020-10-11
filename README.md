# PostgreSQL
Tutorial 1 - create database

Tutorial 2 - create, drop, insert

Tutorial 3 - NOT NULL, default

Tutorial 4 - SELECT

Part1: WHERE, AND, OR, LIKE(%, _), BETWEEN

Part2: IN, NOT IN, NOT

Tutorial 5 - DELETE, UPDATE

Tutorial 6 - ALTER ADD, DROP 

Tutorial 7 - CASE 

Tutorial 8 - ORDER BY, ORDER BY COLUMN_NAME DESC

Tutorial 9 - SUM, ORDER BY SUM, AVG GROUP BY

Tutorial 10 - MIN, MAX, COUNT, LIMIT

# Атомарность

ПРАВИЛО 1. Столбец, содержаищй атомарные данные, не может состоять из нескольких однотипных элементов.

| food_name	| ingredients | 
| ------------- | ------------- |
| хлеб |	мука, молоко, яйца, масло |
| салат |	огурцы, помидоры |

ПРАВИЛО 2. Таблица с атомарными данными не может содержать несколько однотипных столбцов.

| teacher	| student1 | student2 | 
| ------------- | ------------- |------------- |
| Миссис Мартини |	DGO |  RROn |
| ГоВард |	Coolon | Gray |


# 1НФ (Первая нормализованная форма)

Таблица, находящаяся в форме 1НФ, должна выполнять следующие два правила.

Каждая запись должна содержать атомарные значения.

Каждая запись должна обладать уникальным идентификатором, который называется первичным ключом.

Первичный ключ — столбец таблицы, имеющий уникальное значение для каждой записи.

Первичный ключ не может содержать NULL. Значение NULL не может быть уникальным, потому что в других записях этот столбец тоже может содержать NULL.

