USE northwind;

DROP PROCEDURE IF EXISTS date_derniere_commande;

DELIMITER |
CREATE PROCEDURE date_derniere_commande(IN nlc varchar(50))
BEGIN
	SELECT `OrderDate` AS `Date de dernière commande` FROM `orders`
	JOIN `order details` ON `order details`.`OrderID` = `orders`.`OrderID`
	JOIN `customers` ON `customers`.`CustomerID` = `orders`.`CustomerID`
	WHERE `customers`.`CompanyName` = nlc
	ORDER BY `OrderDate` DESC
	LIMIT 1;
END |
DELIMITER ;

CALL date_derniere_commande('Du monde entier');