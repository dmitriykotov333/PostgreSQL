--CHECK
CREATE TABLE bank (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    coin CHAR(l) CHECK (coin IN ( 'P ' , 'N', 'D' , 'Q'))
);
                        
--UNIQUE
CREATE TABLE person (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
	email VARCHAR (50) UNIQUE
);
