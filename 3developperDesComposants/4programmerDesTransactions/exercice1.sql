#Exercice 1 :
#modif_reservation : interdire la modification des réservations (on autorise l'ajout et la suppression). 

ALTER TABLE reservation ENGINE=INNODB;

DROP TRIGGER IF EXISTS modif_reservation ON TABLE reservation;

DELIMITER |
CREATE TRIGGER modif_reservation AFTER UPDATE ON reservation
FOR EACH ROW
	BEGIN
			SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Modification de réservation interdite !';
END |

DELIMITER ;

#Test update : 
UPDATE reservation SET res_arrhes = 9 WHERE res_id = 1;