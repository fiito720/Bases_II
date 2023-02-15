ALTER TABLE ActionsTypes
ADD CONSTRAINT pk_idActionType PRIMARY KEY (idActionType);

ALTER TABLE Adress
ADD CONSTRAINT pk_idAdress PRIMARY KEY (idAdress);

ALTER TABLE Cantons
ADD CONSTRAINT pk_idCanton PRIMARY KEY (idCanton);

ALTER TABLE Comments
ADD CONSTRAINT pk_idUserComments PRIMARY KEY (idUser);

ALTER TABLE Comments
ADD CONSTRAINT pk_idServiceComments PRIMARY KEY (idService);

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
ADD CONSTRAINT pk_idPhone PRIMARY KEY (idPhone);

ALTER TABLE Products
ADD CONSTRAINT pk_idProduct PRIMARY KEY (idProduct);

ALTER TABLE ProductStatus
ADD CONSTRAINT pk_idProductStatus PRIMARY KEY (idProductStatus);

ALTER TABLE Provinces
ADD CONSTRAINT pk_idProvince PRIMARY KEY (idProvince);

ALTER TABLE Route
ADD CONSTRAINT pk_idRoute PRIMARY KEY (idRoute);

ALTER TABLE Services
ADD CONSTRAINT pk_idService PRIMARY KEY (idService);

ALTER TABLE Shopping
ADD CONSTRAINT pk_idProductShopping PRIMARY KEY (idProduct);

ALTER TABLE Shopping
ADD CONSTRAINT pk_idUserShopping PRIMARY KEY (idUser);

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

ALTER TABLE Districts
ADD CONSTRAINT pk_idDistrict PRIMARY KEY (idDistrict);

ALTER TABLE Adress ADD CONSTRAINT
fk_adress_district FOREIGN KEY (idDistrict)
REFERENCES District(idDistrict);