USE northwind;

DROP PROCEDURE IF EXISTS Product_nbr_fr;

DELIMITER |
CREATE PROCEDURE Product_nbr_fr()
BEGIN
   SELECT `CompanyName` AS `Fournisseur`, COUNT(`ProductID`) AS `Nbre produits` FROM `products`
	INNER JOIN `suppliers` ON `products`.`SupplierID` = `suppliers`.`SupplierID`
	WHERE `Country` = 'France'
	GROUP BY `products`.`SupplierID`
	ORDER BY `Fournisseur` DESC;
END |
DELIMITER ;

CALL Product_nbr_fr();