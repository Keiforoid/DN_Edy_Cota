CALL GetAlUsers();

CALL CreateCompany('IBM', 'SW', 'admin@ibm.com', 'employee@ibm.com', @companyId, @adminId, @userId);
select @companyId, @adminId, @userId;