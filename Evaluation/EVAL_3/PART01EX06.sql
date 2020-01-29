USE northwind;

DROP PROCEDURE IF EXISTS produit_exotic_liquids;

DELIMITER |
CREATE PROCEDURE produit_exotic_liquids()
BEGIN
	SELECT `customers`.`Country` AS `Pays` FROM `customers`
	JOIN `orders` ON `customers`.`CustomerID` = `orders`.`CustomerID`
	JOIN `order details` ON `order details`.`OrderID` = `orders`.`OrderID`
	JOIN `Products` ON `Products`.`ProductID` = `order details`.`ProductID`
	JOIN `Suppliers` ON `Suppliers`.`SupplierID` = `Products`.`SupplierID`
	WHERE `suppliers`.`CompanyName` = 'Exotic Liquids'
	GROUP BY `Pays`;
END |
DELIMITER ;

CALL produit_exotic_liquids();