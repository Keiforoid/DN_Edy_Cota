INSERT INTO colors (Id, Name, Code) VALUES (1,'Voltege Blue Metallic Clearcoat','B-97M');
INSERT INTO colors (Id, Name, Code) VALUES (2,'Clover Green Pearl Clearcoat','G-95P');
INSERT INTO colors (Id, Name, Code) VALUES (3,'Championship White','NH-0');

INSERT INTO makes (Id,MakeName,Country) VALUES (1,'Chevrolet','US');
INSERT INTO makes (Id,MakeName,Country) VALUES (2,'Ford','MX');
INSERT INTO makes (Id,MakeName,Country) VALUES (3,'Honda','JA');

INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (1,'Camaro',1977);
INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (2,'C10',1950);
INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (3,'Mustang',1965);
INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (4,'F100',1940);
INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (5,'Civic',1990);
INSERT INTO models (Id,ModelName,FirstProductionYear) VALUES (6,'City',2005);

INSERT INTO incentives (Id,Amount) VALUES (1,2000.00);
INSERT INTO incentives (Id,Amount) VALUES (2,30000.00);
INSERT INTO incentives (Id,Amount) VALUES (3,100.00);

INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (1,1,1,1970);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (2,1,1,1971);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (3,1,1,2015);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (4,2,3,2004);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (5,2,3,2005);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (6,2,3,2006);
INSERT INTO vehicles (Id,MakeId,ModelId,Year) VALUES (7,1,2,1980);

INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (1,1,1,80000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (2,1,2,81000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (3,2,1,80000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (4,3,2,81000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (5,1,3,110000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (6,3,4,200000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (7,1,5,70000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (8,3,6,90000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (9,2,7,250000.00);
INSERT INTO inventories (Id,ColorId,VehicleId,Price) VALUES (10,1,7,300000.00);

INSERT INTO vehicleincentive (VehicleId,IncentiveId,ValidTill) VALUES (1,1,'2021-12-31');
INSERT INTO vehicleincentive (VehicleId,IncentiveId,ValidTill) VALUES (7,1,'2021-03-10');
INSERT INTO vehicleincentive (VehicleId,IncentiveId,ValidTill) VALUES (2,2,'2021-03-10');
INSERT INTO vehicleincentive (VehicleId,IncentiveId,ValidTill) VALUES (4,3,'2021-03-10');


