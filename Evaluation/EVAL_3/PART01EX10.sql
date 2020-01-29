USE northwind;

DROP PROCEDURE IF EXISTS order_delay_avg;

DELIMITER |
CREATE PROCEDURE order_delay_avg()
BEGIN
	SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS `Délai moyen de livraison en jours` FROM `orders`;
END |
DELIMITER ;

CALL order_delay_avg();