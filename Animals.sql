
CREATE DATABASE MansFriends;
use MansFriends;
CREATE TABLE PackAnimals (id int primary key auto_increment, kind VARCHAR(10));
INSERT INTO PackAnimals (kind) VALUES ('Horse'), ('Camel'), ('Donkey');
SELECT * FROM PackAnimals;
CREATE TABLE Horse (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Horse (name, id_animals, birthday, command) VALUES ('Star', 1, '2020-01-01', 'Forward'), ('Apollo', 1, '2021-01-03', 'Around');
SELECT * FROM Horse;
CREATE TABLE Camel (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Camel (name, id_animals, birthday, command) VALUES ('Tom', 2, '2018-05-10', 'Stand'), ('Jerry', 2, '2017-02-25', 'Walk');
SELECT * FROM Camel;
CREATE TABLE Donkey (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Donkey (name, id_animals, birthday, command) VALUES ('Ia', 3, '2018-05-10', 'Go go'), ('Shrek', 3, '2017-02-25', 'Run');
SELECT * FROM Donkey;

CREATE TABLE Pets (id int, kind VARCHAR(10));
INSERT INTO Pets (id, kind) VALUES (4, 'Cat'), (5, 'Dog'), (6, 'Hamster');
SELECT * FROM Pets;
CREATE TABLE Cat (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Cat (name, id_animals, birthday, command) VALUES ('Barsik', 4, '2016-04-07', 'Kis Kis'), ('Nastya', 4, '2022-01-17', 'Kis');
SELECT * FROM Cat;
CREATE TABLE Dog (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Dog (name, id_animals, birthday, command) VALUES ('Reks', 5, '2005-05-25', 'Fas'), ('Lessy', 5, '2015-06-13', 'Voice');
SELECT * FROM Dog;
CREATE TABLE Hamster (id int primary key auto_increment, id_animals int, name VARCHAR(20), birthday date, command VARCHAR(20));
INSERT INTO Hamster (name, id_animals, birthday, command) VALUES ('Busya', 6, '2023-03-05', 'Ku ku'), ('Rose', 6, '2020-04-15', 'Ku');
SELECT * FROM Hamster;
DROP TABLE Camel;

CREATE TABLE Young_Animals 
SELECT *, (YEAR(CURRENT_DATE)-YEAR(`birthday`)) AS 'YEAR', MONTH(CURRENT_DATE)-MONTH(`birthday`)  AS 'MONTH' FROM Horse
WHERE (YEAR(CURRENT_DATE)-YEAR(`birthday`)) BETWEEN 1 and 3
UNION
SELECT *, (YEAR(CURRENT_DATE)-YEAR(`birthday`)) AS 'YEAR', MONTH(CURRENT_DATE)-MONTH(`birthday`)  AS 'MONTH' FROM Donkey
WHERE (YEAR(CURRENT_DATE)-YEAR(`birthday`)) BETWEEN 1 and 3
UNION
SELECT *, (YEAR(CURRENT_DATE)-YEAR(`birthday`)) AS 'YEAR', MONTH(CURRENT_DATE)-MONTH(`birthday`)  AS 'MONTH' FROM Cat
WHERE (YEAR(CURRENT_DATE)-YEAR(`birthday`)) BETWEEN 1 and 3
UNION
SELECT *, (YEAR(CURRENT_DATE)-YEAR(`birthday`)) AS 'YEAR', MONTH(CURRENT_DATE)-MONTH(`birthday`)  AS 'MONTH' FROM Dog
WHERE (YEAR(CURRENT_DATE)-YEAR(`birthday`)) BETWEEN 1 and 3
UNION
SELECT *, (YEAR(CURRENT_DATE)-YEAR(`birthday`)) AS 'YEAR', MONTH(CURRENT_DATE)-MONTH(`birthday`)  AS 'MONTH' FROM Hamster
WHERE (YEAR(CURRENT_DATE)-YEAR(`birthday`)) BETWEEN 1 and 3;
SELECT * FROM Young_Animals;

SELECT * FROM Horse
UNION
SELECT * FROM Donkey
UNION
SELECT * FROM Cat
UNION
SELECT * FROM Dog
UNION
SELECT * FROM Hamster;