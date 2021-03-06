CREATE DATABASE shop;

USE shop;

CREATE TABLE Personne (
per_num INT AUTO_INCREMENT NOT NULL UNIQUE,
per_nom VARCHAR(30),
per_prenom VARCHAR(30),
per_adresse VARCHAR(50),
per_ville VARCHAR(30),
PRIMARY KEY (per_num)
);

CREATE TABLE Groupe (
gro_num int AUTO_INCREMENT NOT NULL UNIQUE,
gro_libelle varchar(50),
PRIMARY KEY (gro_num)
);

CREATE TABLE Appartient (
gro_num2 INT,
per_num2 INT,
FOREIGN KEY (per_num2) REFERENCES Personne(per_num),
FOREIGN KEY (gro_num2) REFERENCES Groupe(gro_num)
);

CREATE INDEX ID_Personne
ON Personne (per_num)

CREATE INDEX ID_Groupe
ON Groupe (gro_num);