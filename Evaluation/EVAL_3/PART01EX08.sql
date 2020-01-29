USE northwind;

DROP PROCEDURE IF EXISTS vente_tot_97_mois;

DELIMITER |
CREATE PROCEDURE vente_tot_97_mois()
BEGIN
	SELECT MONTH(`OrderDate`) AS `Mois 97`, SUM(`UnitPrice` * `Quantity`) AS `Montant Ventes` FROM `order details`
	JOIN `orders` ON `order details`.`OrderId` = `orders`.`OrderID`
	WHERE YEAR(`orders`.`OrderDate`) = '1997'
	GROUP BY `Mois 97`;
END |
DELIMITER ;

CALL vente_tot_97_mois();