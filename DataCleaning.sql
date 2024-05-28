
Select * from retailsales;
DROP 
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
-- we can see that all the duplicates have the same postal code= 44312, 87105--
-- let's retrieve +hem all-- 
select * from retailsales
where State= 'Ohio' AND Category='Furniture' AND City= 'Newark'