USE [Market1] 
GO 
SET ANSI_NULLS ON 
GO 
SET QUOTED_IDENTIFIER ON 
GO  

CREATE TABLE Product 
(ProductID int PRIMARY key, 
Namee nvarchar(50) NOT NULL, 
ProductNumber int NOT NULL, 
Color nvarchar(50) NOT NULL,
StandartCost nvarchar(50) NOT NULL,
Size varchar(50) NOT NULL,
Weightt varchar(50) NOT NULL,
Class nvarchar(50) NOT NULL,
Style nvarchar(50) NULL,
ProductSubcategoryID int NOT NULL,
ProductModelID int NOT NULL,
SellStartDate date NULL,
SellEndDate date NULL,
rowguid nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

 insert into Product 
(ProductID, 
Namee, 
ProductNumber, 
Color, 
StandartCost,
Size,
Weightt,
Class,
Style,
ProductSubcategoryID,
ProductModelID,
SellStartDate,
SellEndDate,
rowguid,
ModifiedDate,
DeletedDate)

values 
(101, 'Платье', 1, 'Белый', '1500 рублей', 'M', '600 гр', 'Бальное', 'Бохо', 1011, 10111, '2023-03-01', '2023-04-01', 'Какая-то информация', '2023-04-10', 1),  
(102, 'Рубашка', 2,'Синий', '600 рублей', 'S', '400 гр', 'Клетчатая', 'Лолита', 1022, 10222, '2023-04-01', '2023-05-01', 'Какая-то информация', '2023-04-10', 0), 
(103,'Костюм',3,'Жёлтый', '3000 рублей', 'XS', '900 гр', 'Женский', NULL, 1033, 10333, '2023-05-01', '2023-06-01', 'Какая-то информация', '2023-04-10', 1),  
(104,'Кепка', 4, 'Зелёный', '400 рублей', 'L', '100 гр', 'Детская', NULL, 1044, 10444, '2023-06-01', '2023-07-01', 'Какая-то информация', '2023-04-10', 0), 
(105, 'Шорты', 5, 'Розовый', '800 рублей', 'M', '300 гр', 'Джинсовые', NULL, 1011, 10111, '2023-07-01', '2023-08-01', 'Какая-то информация', '2023-04-10', 0),  
(106, 'Футболка', 6, 'Малиновый', '800 рублей', 'L', '400 гр', 'Короткая', NULL, 1022, 10222, '2023-08-01', '2023-09-01', 'Какая-то информация', '2023-04-10', 0), 
(107, 'Куртка', 7, 'Фиолетовый', '4000 рублей', 'XL', '800 гр', 'Зимняя', NULL, 1033, 10333, '2023-09-01', '2023-10-01', 'Какая-то информация', '2023-04-10', 1),  
(108, 'Чулки', 8, 'Чёрный', '300 рублей', 'M', '20 гр', 'Капроновые', NULL, 1044, 10444, '2023-10-01', '2023-11-01', 'Какая-то информация', '2023-04-10', 1), 
(109, 'Юбка', 9, 'Серо-буро-малиновый', '1200 рублей', 'M', '400 гр', 'Летняя', 'Винтажная', 1011, 10111, '2023-11-01', '2023-12-01', 'Какая-то информация', '2023-04-10', 0),  
(110, 'Шапка', 10, 'Лазурный', '700 рублей', 'M', '100 гр', 'Меховая', NULL, 1022, 10222, '2023-12-01', '2023-01-01', 'Какая-то информация', '2023-04-10', 0)

CREATE TABLE ProductCategory 
(ProductCategoryID int PRIMARY key, 
Namee nvarchar(50) NOT NULL, 
rowguid nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

insert into ProductCategory 
(ProductCategoryID, 
Namee,
rowguid,
ModifiedDate,
DeletedDate)

values  
(101111, 'Верхняя лёгкая одежда', 'Какая-то информация', '2023-04-10', 0),
(102222, 'Верхняя одежда', 'Какая-то информация', '2023-04-10', 0),  
(103333, 'Нательное бельё', 'Какая-то информация', '2023-04-10', 1),  
(104444, 'Головные уборы', 'Какая-то информация', '2023-04-10', 1)

CREATE TABLE ProductDescription
(ProductDescriptionID int PRIMARY key, 
Descriptionn nvarchar(MAX) NOT NULL, 
rowguid nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

 insert into ProductDescription 
 (ProductDescriptionID, 
Descriptionn,
rowguid,
ModifiedDate,
DeletedDate)

values 
(101111, 'Какое-то описание', 'Какая-то информация', '2023-04-10', 0), 
(102222, 'Какое-то описание', 'Какая-то информация', '2023-04-10', 1), 
(103333, 'Какое-то описание', 'Какая-то информация', '2023-04-10', 0),  
(104444, 'Какое-то описание', 'Какая-то информация', '2023-04-10', 0)

 CREATE TABLE ProductModel
(ProductModelID int PRIMARY key,
Namee nvarchar(50) NOT NULL,
CatalogDescription nvarchar(50) NOT NULL,
Instructions nvarchar(MAX) NOT NULL,
rowguid nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

 insert into ProductModel   
(ProductModelID,
Namee,
CatalogDescription,
Instructions,
rowguid,
ModifiedDate,
DeletedDate)

values 
(10111, 'Модель1', 'Какое-то описание', 'Какая-то инструкция1', 'Какая-то информация', '2023-04-10', 0),
(10222, 'Модель2', 'Какое-то описание', 'Какая-то инструкция1', 'Какая-то информация', '2023-04-10', 0), 
(10333, 'Модель3', 'Какое-то описание', 'Какая-то инструкция1', 'Какая-то информация', '2023-04-10', 0),  
(10444, 'Модель4', 'Какое-то описание', 'Какая-то инструкция1', 'Какая-то информация', '2023-04-10', 1)

 CREATE TABLE ProductSubcategory
(ProductSubcategoryID int PRIMARY key,
ProductCategoryID int NOT NULL,
Namee nvarchar(50) NOT NULL,
rowguid nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

 insert into ProductSubcategory   
(ProductSubcategoryID,
ProductCategoryID,
Namee,
rowguid,
ModifiedDate,
DeletedDate)

values 
(1011, 101111, 'Категория1', 'Какая-то информация', '2023-04-10', 1),
(1022, 102222, 'Категория2', 'Какая-то информация', '2023-04-10', 0), 
(1033, 103333, 'Категория3', 'Какая-то информация', '2023-04-10', 0),  
(1044, 104444, 'Категория4', 'Какая-то информация', '2023-04-10', 1)

CREATE TABLE ProductModelIllustration
(ProductModelID int NOT NULL, 
IllustrationID int NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL,
PRIMARY KEY(IllustrationID, ProductModelID), 
FOREIGN KEY(ProductModelID) 
REFERENCES ProductModel(ProductModelID)
   ON UPDATE CASCADE 
   ON DELETE CASCADE)

 insert into ProductModelIllustration
 (ProductModelID, 
IllustrationID,
ModifiedDate,
DeletedDate)

values 
(10111, 10001, '2023-04-10', 0), 
(10222, 20002, '2023-04-10', 1), 
(10333, 30003, '2023-04-10', 0),  
(10444, 40004, '2023-04-10', 0)

CREATE TABLE ProductModelProductDescriptionCulture
(ProductModelID int NOT NULL, 
ProductDescriptionID int NOT NULL,
CultureID int NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL,
PRIMARY KEY(CultureID, ProductModelID, ProductDescriptionID), 
FOREIGN KEY(ProductDescriptionID) 
REFERENCES ProductDescription(ProductDescriptionID)
   ON UPDATE CASCADE 
   ON DELETE CASCADE)

 insert into ProductModelProductDescriptionCulture
 (ProductModelID, 
ProductDescriptionID,
CultureID,
ModifiedDate,
DeletedDate)

values 
(10111, 101111, 100011, '2023-04-10', 0), 
(10222, 101111, 200022, '2023-04-10', 1), 
(10333, 101111, 300033, '2023-04-10', 0),  
(10444, 101111, 400044, '2023-04-10', 0)

 CREATE TABLE Client
(ClientID int PRIMARY key,
BasketID int NOT NULL,
FullName nvarchar(50) NOT NULL,
ClientPassword varchar(50) NOT NULL,
ClientMail nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL)

 insert into Client   
(ClientID,
BasketID,
FullName,
ClientPassword,
ClientMail,
ModifiedDate,
DeletedDate)

values 
(123, 1233, 'Пряников Алексей Иванович', 'Ahy678', 'kus@gmail.com', '2023-04-10', 1),
(456, 4566, 'Косяков Пётр Косякович', 'Jvw423', 'meow@gmail.com', '2023-04-10', 1), 
(789, 7899, 'Новиков Лев Львович', 'Cki017', 'henry@gmail.com', '2023-04-10', 0),  
(012, 0122, 'Агатов Василий Сергеевич', 'Pbq487', 'servant@gmail.com', '2023-04-10', 0)

CREATE TABLE ClientAddress
(ClientID int NOT NULL, 
ClientIndex int NOT NULL,
City nvarchar(50) NOT NULL,
Street nvarchar(50) NOT NULL,
HouseEntranceApartmentFloor nvarchar(50) NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL,
PRIMARY KEY(ClientIndex, ClientID), 
FOREIGN KEY(ClientID) 
REFERENCES Client(ClientID)
   ON UPDATE CASCADE 
   ON DELETE CASCADE)

 insert into ClientAddress
 (ClientID, 
ClientIndex,
City,
Street,
HouseEntranceApartmentFloor,
ModifiedDate,
DeletedDate)

values 
(123, 101000, '2023-04-10', 'Тверская улица', 'Дом 8, подъезд 2, квартира 210, этаж 12', '2023-04-10', 0), 
(456, 102151, '2023-04-10', 'Улица Моховая', 'Дом 9, подъезд 3, квартира 211, этаж 13', '2023-04-10', 0), 
(789, 102301, '2023-04-10', 'Садовое кольцо', 'Дом 10, подъезд 4, квартира 212, этаж 14', '2023-04-10', 0),  
(012, 103132, '2023-04-10', 'Улица Маросейка', 'Дом 11, подъезд 5, квартира 213, этаж 15', '2023-04-10', 0)

CREATE TABLE ShoppingBasket
(ProductID int NOT NULL, 
ClientID int NOT NULL,
DeliveryDate date NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL,
PRIMARY KEY(ProductID, ClientID), 
FOREIGN KEY(ProductID) 
REFERENCES Product(ProductID)
   ON UPDATE CASCADE 
   ON DELETE CASCADE)

 insert into ShoppingBasket
 (ProductID,
ClientID,
DeliveryDate,
ModifiedDate,
DeletedDate)

values 
(103, 123, '2023-07-11', '2023-04-10', 0), 
(104, 456, '2023-05-14', '2023-04-10', 0), 
(105, 789, '2023-08-04', '2023-04-10', 1),  
(106, 012, '2023-10-09', '2023-04-10', 0)

CREATE TABLE ClientOrder
(ProductID int NOT NULL, 
ClientID int NOT NULL,
DeliveryDate date NOT NULL,
Price nvarchar(50) NOT NULL,
ProductsAmount int NOT NULL,
ModifiedDate date NOT NULL,
DeletedDate bit NOT NULL,
PRIMARY KEY(ProductID, ClientID), 
FOREIGN KEY(ProductID) 
REFERENCES Product(ProductID)
   ON UPDATE CASCADE 
   ON DELETE CASCADE)

 insert into ClientOrder
 (ProductID,
ClientID,
DeliveryDate,
Price,
ProductsAmount,
ModifiedDate,
DeletedDate)

values 
(103, 123, '2023-07-11', '1000 рублей', 1, '2023-04-10', 0), 
(104, 456, '2023-05-14', '600 рублей', 2, '2023-04-10', 1), 
(105, 789, '2023-08-04', '1500 рублей', 3, '2023-04-10', 0),  
(106, 012, '2023-10-09', '2000 рублей', 4, '2023-04-10', 0)
