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