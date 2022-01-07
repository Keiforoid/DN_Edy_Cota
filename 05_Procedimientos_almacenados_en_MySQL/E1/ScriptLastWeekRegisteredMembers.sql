CREATE DEFINER=`root`@`localhost` PROCEDURE `LastWeekRegisteredMembers`()
BEGIN

	DECLARE _lastMonday DATE;
    SET _lastMonday = SUBDATE(curdate(), WEEKDAY(curdate()));
	SELECT m.idMember, m.createdOn, mt.name FROM member m
	INNER JOIN membershipType mt ON mt.idMembershipType = m.membershipTypeId
	WHERE m.createdOn BETWEEN _lastMonday AND DATE_ADD(_lastMonday, INTERVAL 7 DAY);

END