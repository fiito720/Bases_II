---------------------------------------------CREACION DE TABLAS--------------------------------------------------
CREATE TABLE Products(
	idProduct INTEGER NOT NULL,
	idUnit INTEGER NOT NULL,
	nameProduct VARCHAR(20),
	iconProduct VARCHAR(100),
	enable BIT NOT NULL
);

CREATE TABLE Units(
	idUnit INTEGER NOT NULL,
	nameUnit VARCHAR(20)
);

CREATE TABLE InventoryLogs(
	idInventoryLogs INTEGER NOT NULL,
	idProductStatus INTEGER NOT NULL,
	idActionType INTEGER NOT NULL,
	idProduct INTEGER NOT NULL,
	postTime DATE,
	quantity INTEGER,
	buyPrice INTEGER,
	sellPrice INTEGER,
	limitDate DATE
);

CREATE TABLE ProductStatus(
	idProductStatus INTEGER NOT NULL,
	nameProductStatus VARCHAR(20),
	iconURL VARCHAR(50)
);

CREATE TABLE ActionsTypes(
	idActionType INTEGER NOT NULL,
	nameActionType VARCHAR(20)
);

CREATE TABLE Person(
	idPerson INTEGER NOT NULL,
	idGender INTEGER NOT NULL,
	idAddress INTEGER NOT NULL,
	birthday DATE,
	namePerson VARCHAR(20),
	photoURL VARCHAR(50),
	email VARCHAR(50),
	userName VARCHAR(50),
	password VARCHAR(50),
	creationDate DATE
);

CREATE TABLE Genders(
	idGender INTEGER NOT NULL,
	descriptionGender VARCHAR(50)
);

CREATE TABLE Phones(
	number INTEGER,
	idPerson INTEGER NOT NULL,
	idNumber INTEGER NOT NULL
);

CREATE TABLE Identifications(
	idIdentification INTEGER NOT NULL,
	idPerson INTEGER NOT NULL,
	idIdentificationType INTEGER NOT NULL,
	valueIdentification INTEGER
);

CREATE TABLE IdentificationsTypes(
	idIdentificationType INTEGER NOT NULL,
	nameIdentificationType VARCHAR(20),
	mask VARCHAR(20)
);

CREATE TABLE Continents(
	idContinent INTEGER NOT NULL,
	nameContinent VARCHAR(20)
);

CREATE TABLE Countries(
	idCountry INTEGER NOT NULL,
	idContinent INTEGER NOT NULL,
	idDemonym INTEGER NOT NULL,
	nameCountry VARCHAR(20)
);

CREATE TABLE Provinces(
	idProvince INTEGER NOT NULL,
	idCountry INTEGER NOT NULL,
	nameProvince VARCHAR(20)
);

CREATE TABLE Cantons(
	idCanton INTEGER NOT NULL,
	idProvince INTEGER NOT NULL,
	nameCanton VARCHAR(20)
);

CREATE TABLE Districts(
	idDistrict INTEGER NOT NULL,
	idCanton INTEGER NOT NULL,
	nameDistrict VARCHAR(20)
);

CREATE TABLE Addresses(
	idAddress INTEGER NOT NULL,
	idDistrict INTEGER NOT NULL,
	address1 VARCHAR(20),
	address2 VARCHAR(20)
);

/*
CREATE TABLE Users(
	idUser INTEGER,
	idUserType INTEGER,
	userName VARCHAR(20),
	userPassword VARCHAR(50)
);
*/

CREATE TABLE UsersTypes(
	idUserType INTEGER NOT NULL,
	idPerson INTEGER NOT NULL,
	nameUserType VARCHAR(20)
);

CREATE TABLE Shoppings(
	idShopping INTEGER NOT NULL,
	idPerson INTEGER NOT NULL,
	idProduct INTEGER NOT NULL,
	dateOfShopping DATE,
	received BIT NOT NULL
);

CREATE TABLE Comments(
	idComments INTEGER NOT NULL,
	idPerson INTEGER NOT NULL,
	idService INTEGER NOT NULL,
	descriptionComments VARCHAR(200)
);

CREATE TABLE Services(
	idService INTEGER NOT NULL,
	idVehicle INTEGER NOT NULL,
	nameService VARCHAR(20),
	destiny VARCHAR(50),
	dateOfRoute DATE,
	serviceFinished BIT NOT NULL
);

CREATE TABLE Routes(
	idRoute INTEGER NOT NULL,
	idService INTEGER NOT NULL,
	idVehicle INTEGER NOT NULL,
	attendantName VARCHAR(20),
	destiny VARCHAR(100),
	dateOfRoute DATE
);

CREATE TABLE Vehicles(
	idVehicle INTEGER NOT NULL,
	idVehicleType INTEGER NOT NULL,
	dateOfInscription DATE,
	weight INTEGER,
	driverName VARCHAR(20)
);

CREATE TABLE VehiclesTypes(
	idVehicleType INTEGER NOT NULL,
	vehicleTypeName VARCHAR(20)
);

CREATE TABLE StorageSpaces(
	idStorageSpace INTEGER NOT NULL,
	idStorageType INTEGER NOT NULL,
	idCompany INTEGER NOT NULL,
	idInventoryLogs INTEGER NOT NULL,
	nameStorageSpace VARCHAR(20),
	code INTEGER,
	capacity INTEGER,
	location VARCHAR(50),
	height INTEGER,
	width INTEGER,
	deep INTEGER,
	level INTEGER
);

CREATE TABLE StoragesTypes(
	idStoragesTypes INTEGER NOT NULL,
	nameStoragesTypes VARCHAR(20)
);

CREATE TABLE Companies(
	idCompany INTEGER NOT NULL,
	nameCompany VARCHAR(20)
);

CREATE TABLE Demonyms(
	idDemonym INTEGER NOT NULL,
	nameDemonym VARCHAR(20)
);

---------------------------------------------INSERCIONES DE TABLAS--------------------------------------------------
INSERT INTO Continents(idContinent, nameContinent)
VALUES(1, 'America');

INSERT INTO Demonyms(idDemonym, nameDemonym)
VALUES(1, 'Costarricense');

INSERT INTO Countries(idCountry, idContinent, idDemonym, nameCountry)
VALUES(1, 1, 1, 'Costa Rica');

INSERT INTO Provinces(idProvince, idCountry, nameProvince)
VALUES(1, 1, 'Limon');

INSERT INTO Cantons(idCanton, idProvince, nameCanton)
VALUES(1, 1, 'Limon');

INSERT INTO Districts(idDistrict, idCanton, nameDistrict)
VALUES(1, 1, 'Limon');

INSERT INTO Addresses(idAddress, idDistrict, address1, address2)
VALUES(1, 1, 'Limon', 'Limon');

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(1, 1, 'Manzana', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(2, 1, 'Uva', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(3, 1, 'Zanahoria', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(4, 1, 'Masa', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(5, 2, 'Tabasco', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(6, 2, 'Salsa de tomate', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(7, 1, 'Maiz', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(8, 2, 'Mostaza', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(9, 1, 'Frijoles', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(10, 2, 'Leche', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(11, 1, 'Queso', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(12, 1, 'Salchichon', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(13, 1, 'Culantro', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(14, 1, 'Tomillo', 1);

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable)
VALUES(15, 2, 'Coca cola', 1);

INSERT INTO dbo.Units(idUnit, nameUnit)
VALUES(1, 'Gramo');

INSERT INTO dbo.Units(idUnit, nameUnit)
VALUES(2, 'Mililitro');

INSERT INTO dbo.Genders(idGender, descriptionGender)
VALUES(1, 'Femanino');

INSERT INTO dbo.Genders(idGender, descriptionGender)
VALUES(2, 'Masculino');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(1, 2, 1, '1999/11/15', 'David', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(2, 2, 1, '1999/11/15', 'Marcos', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(3, 2, 1, '1999/11/15', 'Juan', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(4, 2, 1, '1999/11/15', 'Judas', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(5, 2, 1, '1999/11/15', 'Robert', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(6, 2, 1, '1999/11/15', 'Satiago', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(7, 2, 1, '1999/11/15', 'Alejandro', 'xxx', 'xxx', '2023/02/15');

INSERT INTO Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(8, 2, 1, '1999/11/15', 'Rodolfo', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(9, 1, 1, '1999/11/15', 'Angie', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(10, 1, 1, '1999/11/15', 'Cristina', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(11, 1, 1, '1999/11/15', 'Fabiola', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(12, 1, 1, '1999/11/15', 'Sharon', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(13, 1, 1, '1999/11/15', 'Ana', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(14, 1, 1, '1999/11/15', 'Maria', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(15, 1, 1, '1999/11/15', 'Tannia', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(16, 2, 1, '1999/11/15', 'German', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(17, 2, 1, '1999/11/15', 'Alfonso', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(18, 2, 1, '1999/11/15', 'Rene', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(19, 2, 1, '1999/11/15', 'Duglas', 'xxx', 'xxx', '2023/02/15');

INSERT INTO dbo.Person(idPerson, idGender, idAddress, birthday, namePerson, userName, password, creationDate)
VALUES(20, 2, 1, '1999/11/15', 'Kevin', 'xxx', 'xxx', '2023/02/15');

select * from Shoppings;

--Persona 1
INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(1,1,5,'2023/01/25', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(2,1,3,'2023/02/10', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(3,1,6,'2023/02/14', 1);

--Persona 2
INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(4,2,5,'2023/02/03', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(5,2,5,'2023/02/05', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(6,2,5,'2023/02/11', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(7,2,5,'2023/02/14', 1);

--Persona 3

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(8,3,15,'2023/01/23', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(9,3,15,'2023/02/04', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(10,3,12,'2023/02/08', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(11,3,15,'2023/02/10', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(12,3,12,'2023/02/13', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(13,3,15,'2023/02/14', 1);

--Persona 4

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(14,4,10,'2023/01/22', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(15,4,9,'2023/01/22', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(16,4,8,'2023/02/06', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(17,4,7,'2023/02/11', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(18,4,11,'2023/02/14', 1);

--Persona 5

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(19,5, 4,'2023/01/26', 1);

--Persona 6

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(20,6, 2,'2023/01/22', 1);

--Persona 7

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(21,7, 4,'2023/01/28', 1);

--Persona 8

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(22,8, 4,'2023/02/13', 1);

--Persona 9

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(23,9, 8,'2023/02/02', 1);

--Persona 10

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(24,10, 7,'2023/02/07', 1);

--Persona 11

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(25,11, 7,'2023/02/09', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(26,11, 7,'2023/02/08', 1);

--Persona 12

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(27,12, 11,'2023/01/24', 1);

--Persona 13

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(28,13, 15,'2023/01/24', 1);

--Persona 14

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(29,14, 1,'2023/02/02', 1);

--Persona 15

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(30,15, 2,'2023/02/04', 1);

--Persona 16

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(31,16, 1,'2023/02/06', 1);

--Persona 17

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(32,17, 11,'2023/02/08', 1);

--Persona 18

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(33,18, 11,'2023/02/10', 1);

--Persona 19

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(34,19, 12,'2023/02/12', 1);

--Persona 20

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(35,20, 8,'2023/01/24', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(36,20, 8,'2023/01/27', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(37,20, 8,'2023/02/01', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(38,20, 8,'2023/02/02', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(39,20, 8,'2023/02/04', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(40,20, 8,'2023/02/05', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(41,20, 8,'2023/02/07', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(42,20, 8,'2023/02/08', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(43,20, 8,'2023/02/10', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(44,20, 8,'2023/02/11', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(45,20, 8,'2023/02/13', 1);

---------------------------------------------LLAVES--------------------------------------------------

ALTER TABLE ActionsTypes
ADD CONSTRAINT pk_idActionType PRIMARY KEY (idActionType);

ALTER TABLE Addresses
ADD CONSTRAINT pk_idAddress PRIMARY KEY (idAddress);

ALTER TABLE Cantons
ADD CONSTRAINT pk_idCanton PRIMARY KEY (idCanton);

ALTER TABLE Comments
ADD CONSTRAINT pk_idUserComments PRIMARY KEY (idComments);

ALTER TABLE Companies
ADD CONSTRAINT pk_idCompany PRIMARY KEY (idCompany);

ALTER TABLE Continents
ADD CONSTRAINT pk_idContinent PRIMARY KEY (idContinent);

ALTER TABLE Countries
ADD CONSTRAINT pk_idCountry PRIMARY KEY (idCountry);

ALTER TABLE Districts
ADD CONSTRAINT pk_idDistrict PRIMARY KEY (idDistrict);

ALTER TABLE Genders
ADD CONSTRAINT pk_idGender PRIMARY KEY (idGender);

ALTER TABLE Identifications
ADD CONSTRAINT pk_idIdentification PRIMARY KEY (idIdentification);

ALTER TABLE IdentificationsTypes
ADD CONSTRAINT pk_idIdentificationType PRIMARY KEY (idIdentificationType);

ALTER TABLE InventoryLogs
ADD CONSTRAINT pk_idInventoryLogs PRIMARY KEY (idInventoryLogs);

ALTER TABLE Person
ADD CONSTRAINT pk_idPerson PRIMARY KEY (idPerson);

ALTER TABLE Phones
ADD CONSTRAINT pk_idNumber PRIMARY KEY (idNumber);

ALTER TABLE Products
ADD CONSTRAINT pk_idProduct PRIMARY KEY (idProduct);

ALTER TABLE ProductStatus
ADD CONSTRAINT pk_idProductStatus PRIMARY KEY (idProductStatus);

ALTER TABLE Provinces
ADD CONSTRAINT pk_idProvince PRIMARY KEY (idProvince);

ALTER TABLE Routes
ADD CONSTRAINT pk_idRoute PRIMARY KEY (idRoute);

ALTER TABLE Services
ADD CONSTRAINT pk_idService PRIMARY KEY (idService);

ALTER TABLE Shoppings
ADD CONSTRAINT pk_idShopping PRIMARY KEY (idShopping);

ALTER TABLE StorageSpaces
ADD CONSTRAINT pk_idStorageSpace PRIMARY KEY (idStorageSpace);

ALTER TABLE Units
ADD CONSTRAINT pk_idUnit PRIMARY KEY (idUnit);

ALTER TABLE UsersTypes
ADD CONSTRAINT pk_idUserType PRIMARY KEY (idUserType);

ALTER TABLE Vehicles
ADD CONSTRAINT pk_idVehicle PRIMARY KEY (idVehicle);

ALTER TABLE VehiclesTypes
ADD CONSTRAINT pk_idVehicleType PRIMARY KEY (idVehicleType);

ALTER TABLE Demonyms
ADD CONSTRAINT pk_idDemonym PRIMARY KEY (idDemonym);

ALTER TABLE StoragesTypes
ADD CONSTRAINT pk_StoragesTypes PRIMARY KEY (idStoragesTypes);

ALTER TABLE Addresses ADD CONSTRAINT
fk_address_district FOREIGN KEY (idDistrict)
REFERENCES Districts(idDistrict)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Cantons ADD CONSTRAINT
fk_Canton_Province FOREIGN KEY (idProvince)
REFERENCES Provinces(idprovince)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Comments ADD CONSTRAINT
fk_Comment_Service FOREIGN KEY (idService)
REFERENCES Services(idService)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Comments ADD CONSTRAINT
fk_Comment_Person FOREIGN KEY (idPerson)
REFERENCES Person(idPerson)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Countries ADD CONSTRAINT
fk_Country_Continent FOREIGN KEY (idContinent)
REFERENCES Continents(idContinent)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Countries ADD CONSTRAINT
fk_Country_Demonym FOREIGN KEY (idDemonym)
REFERENCES Demonyms(idDemonym)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Districts ADD CONSTRAINT
fk_Distric_Canton FOREIGN KEY (idCanton)
REFERENCES Cantons(idCanton)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Identifications ADD CONSTRAINT
fk_Identification_IdentificationType FOREIGN KEY (idIdentificationType)
REFERENCES IdentificationsTypes(idIdentificationType)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Identifications ADD CONSTRAINT
fk_Identification_Person FOREIGN KEY (idPerson)
REFERENCES Person(idPerson)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE InventoryLogs ADD CONSTRAINT
fk_InventoryLogs_ProductStatus FOREIGN KEY (idProductStatus)
REFERENCES ProductStatus(idProductStatus)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE InventoryLogs ADD CONSTRAINT
fk_InventoryLogs_ActionType FOREIGN KEY (idActionType)
REFERENCES ActionsTypes(idActionType)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE InventoryLogs ADD CONSTRAINT
fk_InventoryLogs_Product FOREIGN KEY (idProduct)
REFERENCES Products(idProduct)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Person ADD CONSTRAINT
fk_Person_Gender FOREIGN KEY (idGender)
REFERENCES Genders(idGender)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Provinces ADD CONSTRAINT
fk_Province_Country FOREIGN KEY (idCountry)
REFERENCES Countries(idCountry)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Phones ADD CONSTRAINT
fk_Phone_Person FOREIGN KEY (idPerson)
REFERENCES Person(idPerson)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Products ADD CONSTRAINT
fk_Product_Unit FOREIGN KEY (idUnit)
REFERENCES Units(idUnit)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE StorageSpaces ADD CONSTRAINT
fk_StorageSpaces_StorageType FOREIGN KEY (idStorageType)
REFERENCES StoragesTypes(idStoragesTypes)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE StorageSpaces ADD CONSTRAINT
fk_StorageSpaces_Company FOREIGN KEY (idCompany)
REFERENCES Companies(idCompany)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE StorageSpaces ADD CONSTRAINT
fk_StorageSpaces_InventoryLogs FOREIGN KEY (idInventoryLogs)
REFERENCES InventoryLogs(idInventoryLogs)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Routes ADD CONSTRAINT
fk_Routes_Service FOREIGN KEY (idService)
REFERENCES Services(idService)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Routes ADD CONSTRAINT
fk_Routes_Vehicle FOREIGN KEY (idVehicle)
REFERENCES Vehicles(idVehicle)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Shoppings ADD CONSTRAINT
fk_Shopping_Person FOREIGN KEY (idPerson)
REFERENCES Person(idPerson)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Shoppings ADD CONSTRAINT
fk_Shopping_Product FOREIGN KEY (idProduct)
REFERENCES Products(idProduct)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Vehicles ADD CONSTRAINT
fk_Vehicle_VehicleType FOREIGN KEY (idVehicleType)
REFERENCES VehiclesTypes(idVehicleType)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE UsersTypes ADD CONSTRAINT
fk_UsersTypes_Person FOREIGN KEY (idPerson)
REFERENCES Person(idPerson)
ON DELETE CASCADE
ON UPDATE CASCADE;



ALTER TABLE dbo.Person ADD CONSTRAINT
fk_Person_Address FOREIGN KEY (idAddress)
REFERENCES Addresses(idAddress)
ON DELETE CASCADE
ON UPDATE CASCADE;

------------------------------------------PRELIMINAR #1---------------------------------

--Top 5 personas
SELECT TOP 5 s.idPerson AS Client_id, c.namePerson as 'Name', COUNT(s.idProduct) AS Bought
FROM Shoppings s
INNER JOIN Products p
ON S.idProduct = p.idProduct
INNER JOIN Person c
ON S.idPerson = c.idPerson
GROUP BY s.idPerson, c.namePerson
ORDER BY Bought desc;

--Top 5 de productos más vendidos en los últimos 15 días
SELECT	TOP 5 s.idProduct, pro.nameProduct AS ProductMostBought, COUNT(s.idProduct) AS quantity
FROM Shoppings s
INNER JOIN Person p
ON s.idPerson = p.idPerson
INNER JOIN Products pro
ON s.idProduct = pro.idProduct
where (DATEDIFF(DAY, s.dateOfShopping, GETDATE())) <= 15
GROUP BY s.idProduct, pro.nameProduct
ORDER BY quantity desc;

--Total compras por persona
SELECT s.idPerson AS Client_id, c.namePerson as 'Name', COUNT(s.idProduct) AS Bought
FROM Shoppings s
INNER JOIN Products p
ON S.idProduct = p.idProduct
INNER JOIN Person c
ON S.idPerson = c.idPerson
GROUP BY s.idPerson, c.namePerson
ORDER BY Bought desc;

--Total productos
SELECT s.idProduct AS ProductCode, p.nameProduct, COUNT(s.idProduct) AS sold
FROM Shoppings s
INNER JOIN Products p
ON S.idProduct = p.idProduct
GROUP BY s.idProduct, p.nameProduct
ORDER BY sold desc;