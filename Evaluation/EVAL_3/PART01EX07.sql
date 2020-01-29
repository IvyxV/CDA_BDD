USE northwind;

DROP PROCEDURE IF EXISTS vente_tot_97;

DELIMITER |
CREATE PROCEDURE vente_tot_97()
BEGIN
	SELECT SUM(`Quantity` * `UnitPrice`) AS 'Montant Ventes 97' FROM `order details`
	JOIN `orders` ON `order details`.`OrderID` = `orders`.`OrderID`
	WHERE YEAR(`orders`.`OrderDate`) = 1997;
END |
DELIMITER ;

CALL vente_tot_97();