SELECT *FROM management
SELECT *FROM inventory_categories
SELECT * FROM inventory_subcategories
SELECT * FROM online_sales
SELECT * FROM products
SELECT * FROM shipper_list
select * FROM store_locations
SELECT * FROM store_sales
-------------------------------------------------------
`What is total revenue overall for sales in the assigned territory, plus the start date and end date
that tell you what period the data covers?`

-`Q1: Total revenue and date range for West Colorado`
` Joined Store_Sales to Store_Locations to keep only Colorado stores,
--then used SUM for revenue and MIN/MAX for the start and end dates.
--Result: $6,412,632.22 from 2022-01-01 to 2025-12-31--`


SELECT State,CONCAT('$', FORMAT(SUM(Sale_Amount), 2)) AS Total_Revenue , 
MIN(Transaction_Date) AS Start_Date ,
 MAX(Transaction_Date) AS End_Date
FROM store_locations JOIN store_sales
ON  store_locations.StoreId = store_sales.Store_ID
WHERE State ='Colorado'









