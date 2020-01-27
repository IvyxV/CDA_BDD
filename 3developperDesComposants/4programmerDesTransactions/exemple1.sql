USE hotel;

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

#Test insert
insert into station (sta_nom, sta_altitude) values ('station du bas', 666);