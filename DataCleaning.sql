-- DATA CLEANING BY SQL--
-- In this, there are 3 things that we're trying to do--
-- Remove duplicates -- 
-- Standardize format --
-- remove outliers-- 
-- save the cleaned data and plug it in PowerBI

Select * from retailsales;
-- we try best to not touch the original data because if we do, we take risk of losing valuable info --
-- create a back up table-- 
Create table sales_staging LIKE retailsales -- create table with the same structure as retailsales
Insert into sales staging Select * from retailsales
Select * from sales_staging

-- remove duplicates
WITH duplicates AS (
    SELECT *, 
           ROW_NUMBER() OVER (
               PARTITION BY City, State, Region, Category, 'Sub-Category', 'Postal Code', Discount, Profit, Sales, 'Ship Mode', Segment, Quantity) AS row_num
    FROM sales_staging
)
SELECT *
FROM duplicates
WHERE row_num > 1;
-- create a backup table that holds row nums 
CREATE TABLE sales_staging2 (
    Ship_Mode TEXT, 
    Segment TEXT, 
    Country TEXT,
    City TEXT, 
    State TEXT, 
    Postal_Code INT,
    Region TEXT, 
    Category TEXT,
    Sub_Category TEXT, 
    Sales DOUBLE, 
    Quantity TINYINT(1),
    Discount JSON,
    Profit DOUBLE,
    row_num INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO sales_staging2 SELECT *, 
           ROW_NUMBER() OVER (
               PARTITION BY City, State, Region, Category, 'Sub-Category', 'Postal Code', Discount, Profit, Sales, 'Ship Mode', Segment, Quantity) AS row_num
    FROM sales_staging
-- retrieve duplicates & check-- 
SELECT * from sales_staging2 
WHERE row_num>1
-- before deleting those we have to make sure safe mode is off--
SET SQL_SAFE_UPDATES = 0;
DELETE 
from sales_staging2 
WHERE row_num>1
