USE Holidays;

-- DELETE FROM Hotel;

INSERT INTO Station (`station_nom`) 
VALUES ('Nunc Quis Arcu Industries'),('Nec Company'),('Eget Varius Ultrices PC'),('Duis Foundation'),('Eu Erat Foundation'),('Mauris Corp.'),('Sed Auctor Odio Ltd'),('Ipsum Curabitur Consequat Incorporated'),('Lectus Justo Eu Ltd'),('Dictum Company');

INSERT INTO Hotel (hotel_capacite, hotel_categorie, hotel_nom, hotel_adresse, hotel_station_num)
VALUES (300, 'LUXE', 'La Marmotte', '24 rue de la Boustifaille', 2);

INSERT INTO Chambre (chambre_capacite, chambre_degre_confort,chambre_exposition, chambre_type, chambre_hotel_num)
VALUE (2, 10, 'SUD', 'SUITE ROYAL', 1);

INSERT INTO `Client` (client_adresse, client_nom, client_prenom)
VALUE ('31 rue enguerrand Amiens', 'Boujéma', 'Vincent');

INSERT INTO Reservation (reservation_chambre_num, reservation_num_client, reservation_date_debut, reservation_date_fin, reservation_date_reservation, reservation_arrhes, reservation_prix_total)
VALUE (3, 1, '2020-02-14', '2020-02-15', NOW(), 849.99, 2400.00);


SELECT * FROM Chambre;
SELECT * FROM Hotel;
SELECT * FROM Station;
SELECT * FROM `Client`;
SELECT * FROM Reservation;