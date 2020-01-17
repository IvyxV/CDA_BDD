DROP DATABASE `Holidays`;
CREATE DATABASE `Holidays`;

USE Holidays;

CREATE TABLE Station (
`station_num` INT AUTO_INCREMENT NOT NULL UNIQUE,
`station_nom` VARCHAR(60) NOT NULL,
PRIMARY KEY (`station_num`)
);

CREATE TABLE Hotel (
hotel_num INT AUTO_INCREMENT NOT NULL UNIQUE,
hotel_capacite INT,
hotel_categorie VARCHAR(30),
hotel_nom VARCHAR(30),
hotel_adresse VARCHAR(50),
hotel_station_num INT NOT NULL,
FOREIGN KEY (hotel_station_num) REFERENCES Station(station_num),
PRIMARY KEY (hotel_num)
);

CREATE TABLE Chambre (
chambre_num INT AUTO_INCREMENT NOT NULL UNIQUE,
chambre_capacite INT,
chambre_degre_confort INT,
chambre_exposition ENUM('NORD', 'SUD', 'EST', 'OUEST', 'NORD-EST', 'NORD-OUEST', 'SUD-EST', 'SUD-OUEST'),
chambre_type VARCHAR(15),
chambre_hotel_num INT NOT NULL,
FOREIGN KEY (chambre_hotel_num) REFERENCES Hotel(hotel_num),
PRIMARY KEY (chambre_num)
);

CREATE TABLE `Client` (
client_num INT AUTO_INCREMENT NOT NULL UNIQUE,
client_adresse VARCHAR(50),
client_nom VARCHAR(30),
client_prenom VARCHAR(30),
PRIMARY KEY (client_num)
);

CREATE TABLE Reservation (
reservation_chambre_num INT NOT NULL,
reservation_num_client INT NOT NULL,
reservation_date_debut DATE,
reservation_date_fin DATE,
reservation_date_reservation DATETIME, 
reservation_arrhes DECIMAL(9, 2),
reservation_prix_total DECIMAL(9, 2),
FOREIGN KEY (reservation_chambre_num) REFERENCES Chambre(chambre_num),
FOREIGN KEY (reservation_num_client) REFERENCES `Client`(client_num),
PRIMARY KEY (reservation_chambre_num, reservation_num_client)
);