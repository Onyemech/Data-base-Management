use e_commerce;


-- create table Users(
-- 	userId int NOT NULL AUTO_INCREMENT,
-- 	Fname varchar(20),
--     Lname varchar(20),
--     email varchar(100),
--     password varchar(16),
--     primary key(userId)
-- );


-- create table Product(
-- 	 ProductID int NOT NULL AUTO_INCREMENT,
-- 	ProductName varchar(50),
--     ProductPrice int,
--     primary key(ProductID)
-- );

create table Orders(
	OrderId int NOT NULL AUTO_INCREMENT,
	TimeOrdered datetime,
    NumberOfProductsOrdered int,
    primary key(OrderId)
    )