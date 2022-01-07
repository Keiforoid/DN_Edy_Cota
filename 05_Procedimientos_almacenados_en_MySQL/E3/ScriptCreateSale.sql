CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateSale`(
IN _idUser INT, IN _idInventory INT, IN _cuantity INT)
BEGIN

    DECLARE _idSales INT;
    
    SELECT max(idSales) + 1 INTO _idSales FROM sales;
    
    INSERT INTO sales (idSales, datetime, idUsers)
    VALUES (_idSales, now(), _idUser);
    
    INSERT INTO salesinventory (idSales, idInventory, cuantity)
    Values (_idSales, _idInventory, _cuantity);
    
END