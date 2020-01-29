USE hotel;

#Pour changer le moteur de stockage d'une table
#ALTER TABLE station ENGINE=INNODB;

DELIMITER |
CREATE TRIGGER insert_station AFTER INSERT ON station
FOR EACH ROW
    BEGIN
        DECLARE altitude INT;
        SET altitude = NEW.sta_altitude;
        IF altitude < 1000 THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Règle de gestion altitude !';
        END IF;
END |

DELIMITER ;

#Test insert : 
insert into station (sta_nom, sta_altitude) values ('station du bas', 666);


#Exercice 1 :
modif_reservation 

DELIMITER |
CREATE TRIGGER modif_reservation BEFORE UPDATE
ON reservation
FOR EACH ROW
	BEGIN
		IF NEW.res_date != OLD.res_date
    	AND NEW.res_date_debut != OLD.res_date_debut
    	AND NEW.res_date_fin != OLD.res_date_fin
    	AND NEW.res_prix != OLD.res_prix
    	AND NEW.res_arrhes != OLD.res_arrhes
      THEN
			SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Modification de réservation interdite !';
		END IF;
END |

DELIMITER ;

#Test update : 
UPDATE reservation 
SET res_arrhes = 99
WHERE res_id = 1;