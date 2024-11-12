CREATE DATABASE RealEstateDB;

USE RealEstateDB;

CREATE TABLE MelbourneHousing (
    Suburb VARCHAR(50),
    Address VARCHAR(100),
    Rooms INT,
    Type VARCHAR(50),
    Price INT,
    Method VARCHAR(10),
    SellerG VARCHAR(50),
    Date DATE,
    Distance DECIMAL(5,2),
    Postcode INT,
    Bedroom2 INT,
    Bathroom INT,
    Car INT,
    Landsize DECIMAL(10,2),
    BuildingArea DECIMAL(10,2),
    YearBuilt INT,
    CouncilArea VARCHAR(50),
    Lattitude DECIMAL(10,6),
    Longtitude DECIMAL(10,6),
    Regionname VARCHAR(50),
    Propertycount INT
);


--Data Cleaning 
DELETE FROM MelbourneHousing
WHERE Price IS NULL;

UPDATE MelbourneHousing
SET Date = CONVERT(DATE, Date, 103);  -- Assuming DD/MM/YYYY format


--Analysis Queries
SELECT Suburb, AVG(Price) AS AvgPrice
FROM MelbourneHousing
GROUP BY Suburb
ORDER BY AvgPrice DESC;

SELECT Rooms, AVG(Price) AS AvgPrice
FROM MelbourneHousing
GROUP BY Rooms
ORDER BY Rooms;

SELECT Distance, AVG(Price) AS AvgPrice
FROM MelbourneHousing
GROUP BY Distance
ORDER BY Distance;

SELECT YearBuilt, AVG(Price) AS AvgPrice
FROM MelbourneHousing
WHERE YearBuilt IS NOT NULL
GROUP BY YearBuilt
ORDER BY YearBuilt;

