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
    product_id INT PRIMARY KEY
);

-- RemoteController table
CREATE TABLE RemoteController (
    compatibleWith VARCHAR(255),
    batteryType VARCHAR(255),
    product_id INT PRIMARY KEY
);

-- Customer table
CREATE TABLE Customer (
    username VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255)
);

-- CIModule table
CREATE TABLE CIModule (
    product_id INT PRIMARY KEY
);

-- WallBracket table
CREATE TABLE WallBracket (
    adjustable BOOLEAN,
    product_id INT PRIMARY KEY
);
