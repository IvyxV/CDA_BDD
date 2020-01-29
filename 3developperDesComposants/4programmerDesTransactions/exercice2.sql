#Exercice 2 :
#insert_reservation : interdire l'ajout de réservation pour les hôtels possédant déjà 10 réservations.
  
ALTER TABLE reservation ENGINE=INNODB;

DROP TRIGGER IF EXISTS insert_reservation ON TABLE reservation;

DELIMITER |
CREATE TRIGGER insert_reservation AFTER INSERT ON reservation
FOR EACH ROW
BEGIN
IF COUNT( THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Règle de gestion altitude !';
        END IF;
        
        
	SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Ajout de réservation interdite ! (déjà 10 réservations)';
END |

DELIMITER ;

#Test insert :
UPDATE reservation SET res_arrhes = 9 WHERE res_id = 1;

INSERT INTO reservation

SELECT COUNT(res_id) FROM reservation, chambre 
GROUP BY cha_hot_id;