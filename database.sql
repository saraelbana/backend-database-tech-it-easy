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
-- Relationships
-- Product-Television relationship (0..1 to 0..*)
CREATE TABLE ProductTelevisionRelationship (
    product_id INT,
    television_id INT,
    PRIMARY KEY (product_id, television_id)
);

-- Product-RemoteController relationship (0..1 to 0..*)
CREATE TABLE ProductRemoteControllerRelationship (
    product_id INT,
    remotecontroller_id INT,
    PRIMARY KEY (product_id, remotecontroller_id)
);

-- Product-Customer relationship (0..1 to 0..*)
CREATE TABLE ProductCustomerRelationship (
    product_id INT,
    customer_id VARCHAR(255),
    PRIMARY KEY (product_id, customer_id)
);

-- Product-CIModule relationship (0..1 to 0..*)
CREATE TABLE ProductCIModuleRelationship (
    product_id INT,
    cimodule_id INT,
    PRIMARY KEY (product_id, cimodule_id)
);

-- Product-WallBracket relationship (0..1 to 0..*)
CREATE TABLE ProductWallBracketRelationship (
    product_id INT,
    wallbracket_id INT,
    PRIMARY KEY (product_id, wallbracket_id)
);

-- Foreign Key Constraints
ALTER TABLE Television
ADD CONSTRAINT fk_television_product
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE RemoteController
ADD CONSTRAINT fk_remotecontroller_product
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductTelevisionRelationship
ADD CONSTRAINT fk_product_television
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductTelevisionRelationship
ADD CONSTRAINT fk_television_productrelationship
FOREIGN KEY (television_id) REFERENCES Television(product_id);

ALTER TABLE ProductRemoteControllerRelationship
ADD CONSTRAINT fk_product_remotecontroller
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductRemoteControllerRelationship
ADD CONSTRAINT fk_remotecontroller_productrelationship
FOREIGN KEY (remotecontroller_id) REFERENCES RemoteController(product_id);

ALTER TABLE ProductCustomerRelationship
ADD CONSTRAINT fk_product_customer
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductCustomerRelationship
ADD CONSTRAINT fk_customer_productrelationship
FOREIGN KEY (customer_id) REFERENCES Customer(username);

ALTER TABLE ProductCIModuleRelationship
ADD CONSTRAINT fk_product_cimodule
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductCIModuleRelationship
ADD CONSTRAINT fk_cimodule_productrelationship
FOREIGN KEY (cimodule_id) REFERENCES CIModule(product_id);

ALTER TABLE ProductWallBracketRelationship
ADD CONSTRAINT fk_product_wallbracket
FOREIGN KEY (product_id) REFERENCES Product(id);

ALTER TABLE ProductWallBracketRelationship
ADD CONSTRAINT fk_wallbracket_productrelationship
FOREIGN KEY (wallbracket_id) REFERENCES WallBracket(product_id);
