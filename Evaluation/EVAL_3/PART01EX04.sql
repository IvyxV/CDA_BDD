USE northwind;

DROP PROCEDURE IF EXISTS commande_sup_dix_fr;

DELIMITER |
CREATE PROCEDURE commande_sup_dix_fr()
BEGIN
	SELECT `CompanyName` AS 'Client', COUNT(`orders`.`OrderID`) AS 'Nbre commandes' FROM `customers`
	INNER JOIN `orders` ON `customers`.`CustomerID` = `orders`.`CustomerID`
	WHERE `Country` = 'France'
	GROUP BY `Client`
	HAVING COUNT(`orders`.`OrderID`) > 10;
END |
DELIMITER ;

CALL commande_sup_dix_fr();