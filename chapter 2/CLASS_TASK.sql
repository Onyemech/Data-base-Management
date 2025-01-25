USE cap_codd;
-- task 17
-- select Sku, SKU_Description
-- from cap_codd.INVENTORY

-- task 18
-- SELECT SKU,SKU_Description
-- from cap_codd.inventory

-- task 19
-- SELECT warehouseID
-- from cap_codd.inventory

-- task 20
-- SELECT DISTINCT warehouseID
-- FROM cap_codd.inventory

-- task 21
-- SELECT SKU,SKU_Description,warehouseID,QuantityOnHand,QuantityOnOrder
-- from cap_codd.inventory

-- task 22
-- SELECT *
-- from cap_codd.inventory

-- task 23
-- SELECT *
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand > 0

-- task 24
-- SELECT SKU,SKU_Description
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand = 0

-- task 25
-- SELECT SKU,SKU_Description,warehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand = 0
-- ORDER BY WarehouseID ASC

-- task 26
-- SELECT SKU,SKU_Description,WarehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand = 0
-- ORDER BY WarehouseID DESC ,SKU ASC

-- task 27
-- SELECT SKU,SKU_Description,WarehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0
-- ORDER BY WarehouseID DESC, SKU ASC

-- task 28
-- SELECT SKU,SKU_Description,WarehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0
-- ORDER BY WarehouseID DESC, SKU ASC

-- task 29
-- SELECT SKU,SKU_Description,WarehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand > 1 AND QuantityOnHand < 10
-- ORDER BY WarehouseID DESC, SKU ASC

-- task 30
-- SELECT SKU,SKU_Description,WarehouseID
-- FROM cap_codd.inventory
-- WHERE QuantityOnHand BETWEEN 1 AND 10
-- ORDER BY WarehouseID DESC, SKU ASC

-- task 31
-- SELECT DISTINCT SKU,SKU_Description
-- FROM cap_codd.inventory
-- WHERE SKU_Description LIKE '%Half Dome'

-- task 32
-- SELECT DISTINCT SKU,SKU_Description
-- FROM cap_codd.inventory
-- WHERE SKU_Description LIKE '%Climb%'

-- task 33
-- SELECT DISTINCT SKU,SKU_Description,
-- POSITION("d" IN SKU_Description)
-- FROM cap_codd.inventory

-- task 34
-- SELECT 
--   QuantityOnHand,
--   ABS(QuantityOnHand) AS Absolute_Quantity,
--   CEIL(QuantityOnHand) AS Ceiling_Quantity,
--   FLOOR(QuantityOnHand) AS Floor_Quantity,
--   ROUND(QuantityOnHand) AS Rounded_Quantity,
--   SIGN(QuantityOnHand) AS Quantity_Sign,
--  --  TRUNCATE(QuantityOnHand) AS Truncated_Quantity,
--   MAX(QuantityOnHand) OVER () AS Max_Quantity,
--   MIN(QuantityOnHand) OVER () AS Min_Quantity,
--   SUM(QuantityOnHand) OVER () AS Total_Quantity,
--   AVG(QuantityOnHand) OVER () AS Average_Quantity,
--   COUNT(QuantityOnHand) OVER () AS Quantity_Count
-- FROM 
--   cap_codd.inventory;

-- task 35
-- the "SUM" function calculates the total sum of all values 
-- In a specified numeric column,
--  while the "COUNT" function simply counts the number of rows in a table 
--  Or the number of non-null values within a specific column; 
--  essentially, "SUM" adds up values, while "COUNT" just counts the number of entries present.

-- task 36
--  SELECT warehouseId,
--  sum(QuantityOnHand) AS TotalItemsOnHand
--  FROM cap_codd.inventory
--  GROUP BY WarehouseID
--  ORDER BY TotalItemsOnHand DESC

-- task 37
-- SELECT
-- 	warehouseID,
-- sum(QuantityOnHand) AS TotalItemsOnHandLT3
-- FROM cap_codd.inventory
-- GROUP BY
-- 	warehouseID
-- HAVING 
-- 	COUNT(SKU) < 2
-- ORDER BY
-- 	TotalItemsOnHandLT3 DESC

-- task 39
--  By applying the WHERE clause first,
-- we reduce the number of rows that need to be processed in the subsequent steps. 
-- This can significantly improve performance,
-- especially when dealing with large datasets.

-- task 40
-- SELECT 
--   i.SKU, 
--   i.SKU_Description, 
--   w.WarehouseID, 
--   w.WarehouseCity, 
--   w.WarehouseState
-- FROM 
--   inventory i
--   INNER JOIN warehouse w ON i.WarehouseID = w.WarehouseID
-- WHERE 
--   (w.WarehouseCity = 'Atlanta')
--   OR (w.WarehouseCity = 'Bangor')
--   OR (w.WarehouseCity = 'Chicago');