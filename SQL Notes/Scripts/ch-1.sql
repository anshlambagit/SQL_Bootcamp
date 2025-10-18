-- Create Database
CREATE DATABASE sales;

-- Create Table
CREATE TABLE stores
(
	store_id INT,
    store_name VARCHAR(200)
);

-- Insert Some Records
INSERT INTO stores(store_id)
VALUES
(3);

-- Create Table
CREATE TABLE stores_new
(
	store_id INT UNIQUE,
    store_name VARCHAR(200) NOT NULL
);

-- Insert Some Data
INSERT INTO stores_new
VALUES
(1,"store_xyz");


-- ALTER COMMAND
ALTER TABLE stores_new
RENAME COLUMN store_city to store_location;



