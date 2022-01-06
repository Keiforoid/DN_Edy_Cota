
-- 1. Insertar al menos 5 registros por cada tabla creada en el diseño del ejercicio anterior.

INSERT INTO city (name) VALUES ('Tijuana');
INSERT INTO city (name) VALUES ('Mexicali');
INSERT INTO city (name) VALUES ('Ensenada');
INSERT INTO city (name) VALUES ('Tecate');
INSERT INTO city (name) VALUES ('Rosarito');

INSERT INTO membershiptype (name, cost, duration, createdOn) VALUES ('Basic', 300.00, 1, now());
INSERT INTO membershiptype (name, cost, duration, createdOn) VALUES ('Extended', 850.00, 3, now());
INSERT INTO membershiptype (name, cost, duration, createdOn) VALUES ('Prolonged', 1400.00, 6, now());
INSERT INTO membershiptype (name, cost, duration, createdOn) VALUES ('Yearly', 3000.00, 12, now());
INSERT INTO membershiptype (name, cost, duration, createdOn) VALUES ('ForLife', 8000.00, 120, now());

INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Alejandra', 'Biñedos', '1985-04-05', 1, 'alejandra@example.com', 1, 1, '2021-10-12', '2021-10-12');
INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Fernando', 'Vizqueda', '1989-01-23', 2, 'fernando@example.com', 0, 2, '2021-11-10', '2021-11-10');
INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Mermelada', 'Simela', '1973-03-14', 3, 'mermelada@example.com', 1, 3, '2021-11-20', '2021-11-20');
INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Arquimides', 'De Soto', '1991-07-24', 4, 'arquimides@example.com', 0, 4, '2021-06-20', '2021-06-20');
INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Roca', 'Jhonsong', '1984-08-17', 5, 'roca@example.com', 0, 5, '2021-08-08', '2021-08-08');
INSERT INTO member (name, lastname, birthDay, cityId, Email, allowNewsLetter, membershipTypeId, lastmembership, createdOn) VALUES ('Jessica', 'Monsarret', '1990-10-17', 2, 'jessica@example.com', 0, 3, '2021-09-05', '2021-09-05');

INSERT INTO equipmenttype (name, description) VALUES ('Workout bench', 'Made from high quality steel and durable leather, with six back and four seat positions, the bench is easily adjustable for a full-body workout.');
INSERT INTO equipmenttype (name, description) VALUES ('Heavy bag', 'For boxing, kickboxing, or mixed martial arts (MMA), having a freestanding heavy bag and some boxing gloves.');
INSERT INTO equipmenttype (name, description) VALUES ('Kettlebells', 'These rubber-coated kettlebells from Rogue Fitness, these kettlebells are easy to grip thanks to their textured handles.');
INSERT INTO equipmenttype (name, description) VALUES ('Hydrow Rower', 'low impact way to get your heart pumping while also toning your arms, back, and core, Sturdily built using an aluminum and steel frame, the Hydrow Rower provides a fluid, quiet ride that simulates outdoor rowing.');
INSERT INTO equipmenttype (name, description) VALUES ('Exercise bike', 'The NordicTrack Commercial S22i Studio Cycle bike offers 24 resistance levels.');

INSERT INTO roles (roleName, description, createdOn) VALUES ('SuperAdmin', 'Full control user.', now());
INSERT INTO roles (roleName, description, createdOn) VALUES ('membersM', 'Access to members funtions.', now());
INSERT INTO roles (roleName, description, createdOn) VALUES ('invetoryM', 'Access to inventory funtions.', now());
INSERT INTO roles (roleName, description, createdOn) VALUES ('salesM', 'Access to sales funtions.', now());
INSERT INTO roles (roleName, description, createdOn) VALUES ('usersM', 'Access to users funtions.', now());
INSERT INTO roles (roleName, description, createdOn) VALUES ('equipmentM', 'Access to equipment funtions.', now());

INSERT INTO users (username, password, email, createdOn) VALUES ('cutekyttycat', 'ilovecats000much', 'kittylove@gmail.com', now());
INSERT INTO users (username, password, email, createdOn) VALUES ('musclemaster', 'muclePOWER', 'muscles@gmail.com', now());
INSERT INTO users (username, password, email, createdOn) VALUES ('mejustme', 'anotherd@yingym', 'justliving@gmail.com', now());
INSERT INTO users (username, password, email, createdOn) VALUES ('lovinglobster', 'needsmorebutter', 'ieatlobsters@gmail.com', now());
INSERT INTO users (username, password, email, createdOn) VALUES ('xXxSuperMaxXx', 'needmorePOWER', 'maximus_maximilian@gmail.com', now());

INSERT INTO usersinroles (idUsers, idRoles) VALUES (1, 1);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (2, 2);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (2, 4);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (3, 6);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (4, 3);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (5, 5);
INSERT INTO usersinroles (idUsers, idRoles) VALUES (5, 4);

INSERT INTO measuretype (name, createdOn) VALUES ('Kilograms', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Grams', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Liters', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Milliliters', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Pounds', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Ounce', now());
INSERT INTO measuretype (name, createdOn) VALUES ('Gallon', now());

INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Nature valley bar', 'Honey peanut butter protein bar.', 20.00, 2, 35.00, now());
INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Kirland chocolate chip cokies', 'Chocolate flavor cokies with a lot of protein.', 18.00, 2, 34.00, now());
INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Optimal nutrition protein', 'Well balance protein powder with suplements.', 800.00, 5, 2.07, now());
INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Milky protein', 'Protein powder for milk mixing.', 350.00, 2, 850.00, now());
INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Pure protein shot', 'Fully concentrate protein..', 950.00, 5, 2.70, now());
INSERT INTO producttypes (name, description, price, idMeasureType, measure, createdOn) VALUES ('Powerade', 'Energy fill beverage', 18.00, 4, 828.00, now());

INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (1, 28, now());
INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (2, 14, now());
INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (3, 15, now());
INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (4, 30, now());
INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (5, 0, now());
INSERT INTO inventory (idProductType, cuantity, lastUpdated) VALUES (6, 12, now());

INSERT INTO sales (datetime, idUsers) VALUES ('2021-11-12', 2);
INSERT INTO sales (datetime, idUsers) VALUES ('2021-11-12', 5);
INSERT INTO sales (datetime, idUsers) VALUES ('2021-11-13', 2);
INSERT INTO sales (datetime, idUsers) VALUES ('2021-11-14', 2);
INSERT INTO sales (datetime, idUsers) VALUES ('2021-11-14', 5);

INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (1, 1, 1);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (1, 2, 1);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (2, 3, 2);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (3, 3, 2);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (3, 1, 1);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (4, 5, 1);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (5, 6, 1);
INSERT INTO salesproducttype (`idSales`, `idProductType`, `cuantity`) VALUES (5, 1, 1);

-- 2. Crear una vista que devuelva el listado de usuarios con los roles que tiene asignados.

CREATE VIEW usuarios_roles AS
SELECT u.idUsers, u.username, r.idRoles, r.roleName FROM users u
INNER JOIN usersinroles ur on u.idUsers = ur.idUsers
INNER JOIN roles r on r.idRoles = ur.idRoles ORDER BY u.idUsers;

SELECT * FROM usuarios_roles;

-- 3. Crear una vista que devuelva el listado de productos en existencia con el tipo de producto al que pertenece.

CREATE VIEW products_in_existence AS
SELECT pt.idProductType ,pt.name, i.cuantity FROM producttypes pt
INNER JOIN inventory i on i.idProductType = pt.idProductType
WHERE i.cuantity > 0;

SELECT * FROM products_in_existence;

-- 4. Seleccionar el producto más vendido.

SELECT t.idProductType, t.name,  t.selled FROM (
	SELECT pt.idProductType, pt.name, sum(spt.cuantity) AS selled FROM salesproducttype spt
	INNER JOIN producttypes pt on spt.idProductType = pt.idProductType 
	GROUP BY pt.idProductType
) AS t ORDER BY t.selled DESC LIMIT 1;

-- 5. Seleccionar el último miembro registrado con el tipo de membresía adquirida.

SELECT m.idMember, m.name, m.lastName, mt.idMembershipType, mt.createdOn FROM member m
INNER JOIN membershiptype mt ON m.membershipTypeId = mt.idMembershipType
order by m.createdOn DESC LIMIT 1;