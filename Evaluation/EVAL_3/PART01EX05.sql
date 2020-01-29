USE northwind;

DROP PROCEDURE IF EXISTS ca_sup_trente_K;

DELIMITER |
CREATE PROCEDURE ca_sup_trente_K()
BEGIN
	SELECT `CompanyName` AS `Client`, SUM(`Quantity`  * `UnitPrice`) AS `CA`, `Country` AS `Pays` FROM `customers`
	JOIN `orders` ON `customers`.`CustomerID` = `orders`.`CustomerID`
	JOIN `order details` ON `order details`.`OrderID` = `orders`.`OrderID`
	GROUP BY `customers`.`CustomerID`
	HAVING `CA` > 30000;
END |
DELIMITER ;

CALL ca_sup_trente_K();