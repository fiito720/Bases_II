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

ALTER TABLE Demonyms
ADD CONSTRAINT pk_idDemonym PRIMARY KEY (idDemonym);

ALTER TABLE StoragesTypes
ADD CONSTRAINT pk_StoragesTypes PRIMARY KEY (idStoragesTypes);

ALTER TABLE Adress ADD CONSTRAINT
fk_adress_district FOREIGN KEY (idDistrict)
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

ALTER TABLE InventaryLogs ADD CONSTRAINT
fk_InventaryLogs_ProductStatus FOREIGN KEY (idProductStatus)
REFERENCES ProductStatus(idProductStatus)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE InventaryLogs ADD CONSTRAINT
fk_InventaryLogs_ActionType FOREIGN KEY (idActionType)
REFERENCES ActionsTypes(idActionType)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE InventaryLogs ADD CONSTRAINT
fk_InventaryLogs_Product FOREIGN KEY (idProduct)
REFERENCES Products(idProduct)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Person ADD CONSTRAINT
fk_Person_Gender FOREIGN KEY (idGender)
REFERENCES Genders(idGender)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Person ADD CONSTRAINT
fk_Person_Address FOREIGN KEY (idAddress)
REFERENCES Addresses(idAddress)
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

ALTER TABLE Provinces ADD CONSTRAINT
fk_Province_Country FOREIGN KEY (idCountry)
REFERENCES Countries(idCountry)
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