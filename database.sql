-- Product table
CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    brand VARCHAR(255),
    price DOUBLE,
    currentStock INT,
    sold INT
);

-- Television table
CREATE TABLE Television (
    type VARCHAR(255),
    available DOUBLE,
    refreshRate DOUBLE,
    screenType VARCHAR(255),
    product_id INT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- RemoteController table
CREATE TABLE RemoteController (
    compatibleWith VARCHAR(255),
    batteryType VARCHAR(255),
    product_id INT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- Customer table
CREATE TABLE Customer (
    username VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255)
);

-- CIModule table
CREATE TABLE CIModule (
    product_id INT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- WallBracket table
CREATE TABLE WallBracket (
    adjustable BOOLEAN,
    product_id INT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);
