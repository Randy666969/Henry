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
(101, '������', 1, '�����', '1500 ������', 'M', '600 ��', '�������', '����', 1011, 10111, '2023-03-01', '2023-04-01', '�����-�� ����������', '2023-04-10', 1),  
(102, '�������', 2,'�����', '600 ������', 'S', '400 ��', '���������', '������', 1022, 10222, '2023-04-01', '2023-05-01', '�����-�� ����������', '2023-04-10', 0), 
(103,'������',3,'Ƹ����', '3000 ������', 'XS', '900 ��', '�������', NULL, 1033, 10333, '2023-05-01', '2023-06-01', '�����-�� ����������', '2023-04-10', 1),  
(104,'�����', 4, '������', '400 ������', 'L', '100 ��', '�������', NULL, 1044, 10444, '2023-06-01', '2023-07-01', '�����-�� ����������', '2023-04-10', 0), 
(105, '�����', 5, '�������', '800 ������', 'M', '300 ��', '���������', NULL, 1011, 10111, '2023-07-01', '2023-08-01', '�����-�� ����������', '2023-04-10', 0),  
(106, '��������', 6, '���������', '800 ������', 'L', '400 ��', '��������', NULL, 1022, 10222, '2023-08-01', '2023-09-01', '�����-�� ����������', '2023-04-10', 0), 
(107, '������', 7, '����������', '4000 ������', 'XL', '800 ��', '������', NULL, 1033, 10333, '2023-09-01', '2023-10-01', '�����-�� ����������', '2023-04-10', 1),  
(108, '�����', 8, '׸����', '300 ������', 'M', '20 ��', '����������', NULL, 1044, 10444, '2023-10-01', '2023-11-01', '�����-�� ����������', '2023-04-10', 1), 
(109, '����', 9, '����-����-���������', '1200 ������', 'M', '400 ��', '������', '���������', 1011, 10111, '2023-11-01', '2023-12-01', '�����-�� ����������', '2023-04-10', 0),  
(110, '�����', 10, '��������', '700 ������', 'M', '100 ��', '�������', NULL, 1022, 10222, '2023-12-01', '2023-01-01', '�����-�� ����������', '2023-04-10', 0)

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
(101111, '������� ����� ������', '�����-�� ����������', '2023-04-10', 0),
(102222, '������� ������', '�����-�� ����������', '2023-04-10', 0),  
(103333, '��������� �����', '�����-�� ����������', '2023-04-10', 1),  
(104444, '�������� �����', '�����-�� ����������', '2023-04-10', 1)

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
(101111, '�����-�� ��������', '�����-�� ����������', '2023-04-10', 0), 
(102222, '�����-�� ��������', '�����-�� ����������', '2023-04-10', 1), 
(103333, '�����-�� ��������', '�����-�� ����������', '2023-04-10', 0),  
(104444, '�����-�� ��������', '�����-�� ����������', '2023-04-10', 0)

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
(10111, '������1', '�����-�� ��������', '�����-�� ����������1', '�����-�� ����������', '2023-04-10', 0),
(10222, '������2', '�����-�� ��������', '�����-�� ����������1', '�����-�� ����������', '2023-04-10', 0), 
(10333, '������3', '�����-�� ��������', '�����-�� ����������1', '�����-�� ����������', '2023-04-10', 0),  
(10444, '������4', '�����-�� ��������', '�����-�� ����������1', '�����-�� ����������', '2023-04-10', 1)

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
(1011, 101111, '���������1', '�����-�� ����������', '2023-04-10', 1),
(1022, 102222, '���������2', '�����-�� ����������', '2023-04-10', 0), 
(1033, 103333, '���������3', '�����-�� ����������', '2023-04-10', 0),  
(1044, 104444, '���������4', '�����-�� ����������', '2023-04-10', 1)

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
(123, 1233, '�������� ������� ��������', 'Ahy678', 'kus@gmail.com', '2023-04-10', 1),
(456, 4566, '������� ϸ�� ���������', 'Jvw423', 'meow@gmail.com', '2023-04-10', 1), 
(789, 7899, '������� ��� �������', 'Cki017', 'henry@gmail.com', '2023-04-10', 0),  
(012, 0122, '������ ������� ���������', 'Pbq487', 'servant@gmail.com', '2023-04-10', 0)

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
(123, 101000, '2023-04-10', '�������� �����', '��� 8, ������� 2, �������� 210, ���� 12', '2023-04-10', 0), 
(456, 102151, '2023-04-10', '����� �������', '��� 9, ������� 3, �������� 211, ���� 13', '2023-04-10', 0), 
(789, 102301, '2023-04-10', '������� ������', '��� 10, ������� 4, �������� 212, ���� 14', '2023-04-10', 0),  
(012, 103132, '2023-04-10', '����� ���������', '��� 11, ������� 5, �������� 213, ���� 15', '2023-04-10', 0)

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
(103, 123, '2023-07-11', '1000 ������', 1, '2023-04-10', 0), 
(104, 456, '2023-05-14', '600 ������', 2, '2023-04-10', 1), 
(105, 789, '2023-08-04', '1500 ������', 3, '2023-04-10', 0),  
(106, 012, '2023-10-09', '2000 ������', 4, '2023-04-10', 0)
