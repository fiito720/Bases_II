INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable, price)
VALUES(2, 1, 'Pera', 1, 600.0),
(3, 1, 'Harina', 1, 1200.0),
(4, 1, 'Atun', 1, 725.0),
(5, 2, 'Leche', 1, 1100.0),
(6, 2, 'Agua', 1, 150.0),
(7, 2, 'Jugo de naranja', 1, 900.0),
(8, 1, 'Galletas soda', 1, 600.0),
(9, 1, 'ElectroLit', 1, 1500.0),
(10, 1, 'Ajo', 1, 500.0),
(11, 1, 'Leche en polvo', 1, 4000.0),
(12, 1, 'Fideos Suli', 1, 500.0),
(13, 1, 'Pera', 1, 900.0),
(14, 1, 'Churrrasco', 1, 5500.0),
(15, 2, 'Yugurt de almendras', 1, 6000.0)
go

INSERT INTO dbo.Products(idProduct, idUnit, nameProduct, enable, price)
VALUES(8, 1, 'Galletas soda', 1, 600.0);

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

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(28,13, 15,'2023/01/24', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(29,14, 1,'2023/02/02', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(30,15, 2,'2023/02/04', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(31,16, 1,'2023/02/06', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(32,17, 11,'2023/02/08', 1);

INSERT INTO Shoppings(idShopping, idPerson, idProduct, dateOfShopping, received)
VALUES(33,18, 11,'2023/02/10', 1);

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

delete Shoppings where received = 1;

select * from Shoppings;