CREATE DATABASE IF NOT EXISTS 'sportscenter';

Use 'sportscenter';

DROP TABLE IF EXISTS Brand;
DROP TABLE IF EXISTS Type;
DROP TABLE IF EXISTS Product;


CREATE TABLE `Brand` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) NOT NULL
);


INSERT INTO Brand (Name) VALUES
                             ('Adidas'),
                             ('ASICS'),
                             ('Victor'),
                             ('Yonex'),
                             ('Puma'),
                             ('Nike'),
                             ('Babolat');

CREATE TABLE `Type` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) NOT NULL
);

INSERT INTO Type (name) VALUES
                            ('Shoes'),
                            ('Rackets'),
                            ('Football'),
                            ('Kit Bags');

CREATE TABLE `Product` (
    `Id` INT AUTO_INCREMENT PRIMARY KEY,
    `Name` VARCHAR(255) NOT NULL,
    `Description` TEXT,
    `Price` DECIMAL(10,2) NOT NULL,
    `PictureUrl` VARCHAR(255),
    `ProductTypeId` INT NOT NULL,
    `ProductBrandId` INT NOT NULL,
    FOREIGN KEY (`ProductTypeId`) REFERENCES `Type`(`Id`),
    FOREIGN KEY (`ProductBrandId`) REFERENCES `Brand`(`Id`)
);


INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Bike', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', '278.00', 'https://loremflickr.com/640/480', '2', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Salad', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', '296.00', 'https://loremflickr.com/640/480', '2', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Chicken', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', '76.00', 'https://loremflickr.com/640/480', '3', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Chicken', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', '179.00', 'https://loremflickr.com/640/480', '4', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Gloves', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fit', '146.00', 'https://loremflickr.com/640/480', '2', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Computer', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients', '266.00', 'https://loremflickr.com/640/480', '4', '3');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Chips', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', '24.00', 'https://loremflickr.com/640/480', '4', '6');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Computer', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', '58.00', 'https://loremflickr.com/640/480', '1', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Chips', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', '118.00', 'https://loremflickr.com/640/480', '1', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Pizza', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality', '243.00', 'https://loremflickr.com/640/480', '2', '6');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Hat', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals', '80.00', 'https://loremflickr.com/640/480', '4', '4');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Bacon', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and support', '105.00', 'https://loremflickr.com/640/480', '4', '4');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Cheese', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', '31.00', 'https://loremflickr.com/640/480', '1', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Shoes', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', '187.00', 'https://loremflickr.com/640/480', '2', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Table', 'The Football Is Good For Training And Recreational Purposes', '116.00', 'https://loremflickr.com/640/480', '4', '5');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Fish', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart', '212.00', 'https://loremflickr.com/640/480', '2', '3');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Ball', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', '25.00', 'https://loremflickr.com/640/480', '3', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Ball', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design', '19.00', 'https://loremflickr.com/640/480', '3', '2');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Gloves', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive', '14.00', 'https://loremflickr.com/640/480', '1', '7');
INSERT INTO Product (Name, Description, Price, PictureUrl, ProductTypeId, ProductBrandId) VALUES ('Mouse', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016', '170.00', 'https://loremflickr.com/640/480', '3', '6');
