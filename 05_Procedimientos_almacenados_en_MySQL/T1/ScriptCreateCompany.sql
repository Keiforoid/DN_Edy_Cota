CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateCompany`(IN _companyName VARCHAR(100),
IN _location CHAR(2), IN _adminEmail VARCHAR(500), IN _userEmail VARCHAR(500),
OUT _idcompany INT, OUT _idadmin INT , OUT _iduser INT)
BEGIN
	
    DECLARE _companyId INT;
    DECLARE _adminId INT;
    DECLARE _userId INT;
    
    SELECT max(idcompany) + 1 INTO _companyId FROM company;
    SELECT max(iduser) + 1,  max(iduser) + 2 INTO _adminId, _userId FROM users;
    
    INSERT INTO company (idcompany, companyname, location)
    VALUES (_companyId, _companyName, _location);
    
    INSERT INTO users (iduser, username, email, idcompany)
    VALUES (_adminId, 'admin', _adminEmail, _companyId);
    
    INSERT INTO users (iduser, username, email, idcompany)
    VALUES (_userId, 'user', _userEmail, _companyId);
    
    SET _idcompany = _companyId;
    SET _idadmin = _adminId;
    SET _iduser = _companyId;
    
END