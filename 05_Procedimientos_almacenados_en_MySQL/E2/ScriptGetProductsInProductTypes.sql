CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsInProductTypes`(IN _idProductType INT)
BEGIN
	SELECT i.idInventory, i.name AS 'productName', pt.idProductType, pt.name AS 'productTypeName' FROM inventory i
	INNER JOIN producttypes pt ON  pt.idProductType = i.idProductType
	WHERE i.idProductType = _idProductType;
END