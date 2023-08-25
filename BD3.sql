CREATE DATABASE Livro;

SHOW DATABASES;

USE Livro;

CREATE TABLE Livro.Livraria (

	Id INT auto_increment,
    Titulo VARCHAR(300) not null,
    Autor VARCHAR(200) not null,
    GeneroA VARCHAR(14) not null,
    Pag INT not null,
    Editora VARCHAR(20) not null,
    ValorC DOUBLE not null,
    ValorK DOUBLE not null,
    Ano INT,
    PRIMARY KEY (Id)
    
);


INSERT INTO Livro.Livraria (Titulo, Autor, GeneroA, Pag, Editora, ValorC, ValorK, Ano)
VALUES('Pai Rico, Pai Pobre', 'Robert T. Kiyosaki', 'M', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S. Dweck', 'F', 312, 'Objetiva', 38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'M', 256, 'Sextante', 33.99, 33.24, 2019),
('A Cabana', 'William P. Young', 'M', 240, 'Arqueiro', 35.99, 17.90, 2008),
('O Poder do Hábito', 'Charles Duhigg', 'M', 408, 'Objetiva', 61.53, 58.45, 2008),
('Código Limpo', 'Robert C. Martin', 'M', 425, 'Alta Books', 91.99, 87.39, 2012),
('Essencialismo', 'Greg McKeown', 'M', 272, 'Sextante', 53.5, 33.24, 2015),
('Me Poupe!', 'Nathalia Arcuri', 'F', 176, 'Sextante', 32.86, 17.45, 2018),
('Comece pelo Porquê', 'Simon Sinek', 'M', 176, 'Sextante', 61.53, 58.45, 2018);

-- Trazer todos os dados
SELECT * FROM Livro.Livraria;

-- 2 Trazer livro e editora
SELECT Titulo, Editora FROM Livro.Livraria;

-- 3 Trazer nome do livro, editora, autores
SELECT Titulo, Editora, Autor FROM Livro.Livraria
WHERE GeneroA = 'M';

-- 4 Trazer nome das autoras
SELECT Titulo, Editora, Autor FROM Livro.Livraria
WHERE GeneroA = 'F';

-- 5 Trazer ano maior 2017
SELECT Titulo, Editora, Autor FROM Livro.Livraria
WHERE Ano >= 2017;

-- 6 Trazer livro editora especifica
SELECT Autor, Editora FROM Livro.Livraria
WHERE GeneroA = 'M' AND Editora = 'Sextante' OR Editora = 'Alta Books';

-- 7 Trazer quase tudo
SELECT Titulo, Autor, Pag, Ano, ValorC FROM Livro.Livraria;

-- 8 Trazer quase tudo
SELECT Titulo, Autor, Pag, Ano, ValorK FROM Livro.Livraria;

-- 9 Trazer editora sextante
SELECT Autor, Editora FROM Livro.Livraria 
WHERE Editora = 'Sextante';

-- 10 Valor capa comum e Kindle
SELECT Titulo, Autor, ValorC, ValorK FROM Livro.Livraria;



DROP TABLE Livro.Livraria;

