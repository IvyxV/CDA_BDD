USE northwind;

DROP PROCEDURE IF EXISTS Product_Exotic;

DELIMITER |
CREATE PROCEDURE Product_Exotic()
BEGIN
   SELECT `CompanyName` AS `Société`, `ProductName` AS `Produit`, `UnitPrice` AS `Prix` FROM `products`, `suppliers`
	WHERE `suppliers`.`CompanyName` = 'Exotic Liquids';
END |
DELIMITER ;

CALL Product_Exotic();