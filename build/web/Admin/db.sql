create table users(
    id PRIMARY KEY AUTO_INCREMENT,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

create table categorydetails
(
    id PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL,
    CategoryId int,
    CONSTRAINT FK_CategoryId FOREIGN KEY (CategoryId)
    REFERENCES categorydetails(id)
)

create table productdetails
(
    id int PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50) NOT NULL,
    ProductDescription VARCHAR(255) NOT NULL,
    ProductPrice int(6) NOT NULL,
    ProductColour VARCHAR(20) NOT NULL,
    ProductQuantity int(6) NOT NULL,
    CategoryID int,
    CONSTRAINT FK_CategoryPID FOREIGN KEY (CategoryID)
    REFERENCES categorydetails(id) 
)

create table orderstatus
(
    id int PRIMARY KEY AUTO_INCREMENT,
    StatusName VARCHAR(50) NOT NULL
)

