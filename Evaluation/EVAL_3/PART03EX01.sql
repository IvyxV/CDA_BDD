USE northwind;

ALTER TABLE `customers` ENGINE=INNODB;

DELIMITER |
CREATE TRIGGER verif_pays AFTER INSERT ON `order Details`
FOR EACH ROW
BEGIN
	DECLARE `paysExpedition` VARCHAR(15);
	DECLARE `paysClient` VARCHAR(15);
	SET `paysClient` = (SELECT DISTINCT `ShipCountry` FROM `orders`
	JOIN `order details` ON `order details`.`OrderID` = `orders`.`OrderID`
	WHERE `order details`.`OrderID` = NEW.`OrderID`);

	SET `paysExpedition` = (SELECT DISTINCT `Country` FROM `suppliers`
	JOIN `Products` ON `suppliers`.`SupplierID` = `products`.`SupplierID`
	JOIN `order details` ON `products`.`ProductID` = `order details`.`ProductID`
	WHERE `order details`.`ProductID` = NEW.`ProductID`);

	IF `paysExpedition` != `paysClient` THEN
		SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Le pays de livraison doit être le même que le pays du fournisseur !';
	END IF;
END |
DELIMITER ;

INSERT INTO `order details` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES (10999, 16, 5 ,10 , 0);

INSERT INTO order details (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES (10248, 11, 14.0000, 12, 0);

INSERT INTO `order details` (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES (10248, 60, 34.8000, 5, 0);