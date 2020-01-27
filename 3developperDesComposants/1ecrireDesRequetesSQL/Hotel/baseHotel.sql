USE hotel;

#____________________________________LOT 1______________________________________

#1 : 
# SELECT hot_nom, hot_ville FROM hotel.hotel;

#2 : 
#SELECT cli_nom, cli_prenom, cli_adresse, cli_ville FROM `client`
#WHERE cli_nom ='white';

#3 : 
#SELECT sta_nom, sta_altitude from station
#WHERE sta_altitude < 1000;

#4 :
#SELECT cha_numero, cha_capacite FROM chambre
#WHERE cha_capacite > 1;

#5 : 
#SELECT cli_nom, cli_ville FROM `client`
#WHERE cli_ville != 'Londre';

#6 : 
#SELECT hot_nom, hot_ville, hot_categorie FROM hotel
#WHERE hot_ville = 'Bretou' && hot_categorie > 3;

#____________________________________LOT 2______________________________________

#7 :
#SELECT sta_nom, hot_nom, hot_categorie, hot_ville FROM station, hotel;

#8 :
#SELECT hot_nom, hot_categorie, hot_ville, cha_numero FROM chambre, hotel;

#9 :
#SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite FROM chambre, hotel
#WHERE hot_ville = 'Bretou' && cha_capacite > 1;

#10 :
#SELECT cli_nom, hot_nom, res_date FROM `client`, hotel, reservation;

#11 :
#SELECT sta_nom, hot_nom, cha_numero, cha_capacite FROM station, hotel, chambre;

#12 :
#SELECT cli_nom, hot_nom, res_date_debut, DATEDIFF(res_date_fin, res_date_debut) AS res_nb_jour FROM `client`, hotel, reservation;

#____________________________________LOT 3______________________________________

#13 :
#SELECT`station`.`sta_nom` AS 'Nom de la Station',
#COUNT(hotel.hot_id) AS `Nombre d'Hôtels` FROM station INNER JOIN hotel ON station.sta_id = hotel.hot_sta_id
#GROUP BY hot_sta_id;

#14
#SELECT sta_nom, hot_nom, COUNT(chambre.cha_id) AS `hot_nombre_chambre`
#FROM ((hotel INNER JOIN chambre ON chambre.cha_hot_id = hotel.hot_id) 
#INNER JOIN station ON station.sta_id = hotel.hot_sta_id)
#GROUP BY hotel.hot_sta_id;

#15 :
#SELECT `station`.`sta_nom` AS `Nom de la Station`, `hotel`.`hot_nom` AS `Nom de l'Hôtel`, COUNT(`chambre`.`cha_id`) AS `Nombre de Chambres`
#FROM ((`hotel` INNER JOIN `chambre` ON `chambre`.`cha_hot_id` = `hotel`.`hot_id`)
#INNER JOIN `station` ON `station`.`sta_id` = `hotel`.`hot_sta_id`)
#GROUP BY `hotel`.`hot_sta_id`
#HAVING `Nombre de Chambres` > 1;