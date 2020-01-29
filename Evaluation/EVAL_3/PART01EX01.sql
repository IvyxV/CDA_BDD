USE northwind;

DROP PROCEDURE IF EXISTS List_contact_fr;

DELIMITER |
CREATE PROCEDURE List_contact_fr()
BEGIN
   SELECT `CompanyName` AS `Société`, `ContactName` AS `Contact`, `ContactTitle` AS `Fonction`, `Phone` AS `Téléphone` FROM `suppliers`
   WHERE `suppliers`.`Country` = 'France'
	ORDER BY `Société`;
END |
DELIMITER ;

CALL List_contact_fr();