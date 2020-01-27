	
DELIMITER |
 
CREATE PROCEDURE ajoutClient(
    In nom varchar (50), 
    In prenom varchar (50), 
    In ville varchar (50)
)
 
BEGIN
   INSERT INTO client (cli_nom, cli_prenom, cli_ville) VALUES (nom, prenom, ville);
END |
 
DELIMITER ;

CALL ajoutClient('Jessica', 'Pikatchien', 'Dunkerque')