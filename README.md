# PostgreSQL
Tutorial 1 - create database

Tutorial 2 - create, drop, insert

Tutorial 3 - NOT NULL, default

Tutorial 4 - SELECT

Part1: WHERE, AND, OR, LIKE(%, _), BETWEEN

Part2: IN, NOT IN, NOT

Tutorial 5 - DELETE, UPDATE

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
