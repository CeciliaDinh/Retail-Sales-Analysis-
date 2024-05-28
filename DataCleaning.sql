-- DATA CLEANING BY SQL--
-- In this, there are 3 things that we're trying to do--
-- Remove duplicates -- 
-- Standardize format --
-- remove outliers-- 
-- remove unncessary rows & columns 
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
SELECT City From sales_staging2
SELECT Ship_Mode From sales_staging2
SELECT Segment From sales_staging2
-- assume that our data is not normally distributed --
-- we use IQR to find out outliers --
-- Step 1: Calculate the IQR for Sales and Profit
WITH sales_stats AS (
    SELECT 
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Sales) AS Q1_Sales,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Sales) AS Q3_Sales,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Profit) AS Q1_Profit,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Profit) AS Q3_Profit
    FROM sales_staging2
),
iqr_stats AS (
    SELECT 
        Q1_Sales, 
        Q3_Sales, 
        Q3_Sales - Q1_Sales AS IQR_Sales,
        Q1_Profit, 
        Q3_Profit, 
        Q3_Profit - Q1_Profit AS IQR_Profit
    FROM sales_stats
)
-- Step 2: Identify Outliers Based on the Calculated IQR
SELECT 
    s.*,
    CASE 
        WHEN s.Sales < Q1_Sales - 1.5 * IQR_Sales THEN 'Low Sales Outlier'
        WHEN s.Sales > Q3_Sales + 1.5 * IQR_Sales THEN 'High Sales Outlier'
        ELSE NULL 
    END AS Sales_Outlier,
    CASE 
        WHEN s.Profit < Q1_Profit - 1.5 * IQR_Profit THEN 'Low Profit Outlier'
        WHEN s.Profit > Q3_Profit + 1.5 * IQR_Profit THEN 'High Profit Outlier'
        ELSE NULL 
    END AS Profit_Outlier
FROM 
    sales_staging2 s, 
    iqr_stats
WHERE 
    s.Sales < Q1_Sales - 1.5 * IQR_Sales
    OR s.Sales > Q3_Sales + 1.5 * IQR_Sales
    OR s.Profit < Q1_Profit - 1.5 * IQR_Profit
    OR s.Profit > Q3_Profit + 1.5 * IQR_Profit;

WITH sales_percentiles AS (
    SELECT 
        Sales,
        Profit,
        NTILE(4) OVER (ORDER BY Sales) AS sales_quartile,
        NTILE(4) OVER (ORDER BY Profit) AS profit_quartile
    FROM 
        sales_staging2
),
quartiles AS (
    SELECT 
        MIN(Sales) AS q1_sales,
        MAX(Sales) AS q3_sales,
        MIN(Profit) AS q1_profit,
        MAX(Profit) AS q3_profit
    FROM 
        sales_percentiles
    WHERE 
        sales_quartile IN (1, 3)
        OR profit_quartile IN (1, 3)
),
iqr_stats AS (
    SELECT 
        q1_sales,
        q3_sales,
        q3_sales - q1_sales AS iqr_sales,
        q1_profit,
        q3_profit,
        q3_profit - q1_profit AS iqr_profit
    FROM 
        quartiles
)
-- Step 2: Identify outliers based on IQR
SELECT 
    s.*,
    CASE 
        WHEN s.Sales < q1_sales - 1.5 * iqr_sales THEN 'Low Sales Outlier'
        WHEN s.Sales > q3_sales + 1.5 * iqr_sales THEN 'High Sales Outlier'
        ELSE NULL 
    END AS Sales_Outlier,
    CASE 
        WHEN s.Profit < q1_profit - 1.5 * iqr_profit THEN 'Low Profit Outlier'
        WHEN s.Profit > q3_profit + 1.5 * iqr_profit THEN 'High Profit Outlier'
        ELSE NULL 
    END AS Profit_Outlier
FROM 
    sales_staging2 s, 
    iqr_stats
WHERE 
    s.Sales < q1_sales - 1.5 * iqr_sales
    OR s.Sales > q3_sales + 1.5 * iqr_sales
    OR s.Profit < q1_profit - 1.5 * iqr_profit
    OR s.Profit > q3_profit + 1.5 * iqr_profit;
-- there is no outliers by sales and profit --
-- we will drop country because the only country here is US--
ALTER TABLE sales_staging2
DROP COLUMN Country
ALTER TABLE sales_staging2
DROP COLUMN Postal_Code
-- drop postal code because postal code will contribute nothing to our visualization -- 
select * from sales_staging2
-- I want to create binary columns for ship_mode so it's easy for our EDA -- 
ALTER TABLE sales_staging2
ADD COLUMN First_Class TINYINT(1) DEFAULT 0,
ADD COLUMN Second_Class TINYINT(1) DEFAULT 0,
ADD COLUMN Standard_Class TINYINT(1) DEFAULT 0,
ADD COLUMN Same_Day TINYINT(1) DEFAULT 0;
SET SQL_SAFE_UPDATES = 0;
UPDATE sales_staging2 
SET 
First_Class= Case when 'Ship_Mode'='First Class' Then 1 else 0 end, 
Second_Class= Case when 'Ship_Mode'='Second Class' Then 1 else 0 end, 
Standard_Class= Case when 'Ship_Mode'='Standard Class' Then 1 else 0 end,
Same_Day= Case when 'Ship_Mode'='Same Day' Then 1 else 0 end;
ALTER TABLE sales_staging2
DROP COLUMN Ship_Mode;
ALTER TABLE sales_staging2
DROP COLUMN  row_num;
select * from sales_staging2
-- i assume that negative values are false inputs because they sell pretty much on that rows and the discount was low-- 
UPDATE sales_staging2
SET Profit = ABS(Profit)
WHERE Profit < 0;
select * from sales_staging2
-- export the clean data-- 
SELECT *
FROM sales_staging2;