SELECT *FROM management
SELECT * FROM inventory_categories
SELECT * FROM inventory_subcategories
SELECT * FROM online_sales
SELECT * FROM products
SELECT * FROM shipper_list
select * FROM store_locations
SELECT * FROM store_sales
-------------------------------------------------------
`Q1: What is total revenue overall for sales in the assigned territory, plus the start date and end date
that tell you what period the data covers?`

--  Q1: Total revenue and date range for West Colorado
-- Joined Store_Sales to Store_Locations to keep only Colorado stores,
-- then used SUM for revenue and MIN/MAX for the start and end dates.
-- Result: $6,412,632.22 from 2022-01-01 to 2025-12-31--`


SELECT State, CONCAT('$', FORMAT(SUM(Sale_Amount), 2)) AS Total_Revenue , MIN(Transaction_Date) AS Start_Date ,
 MAX(Transaction_Date) AS End_Date
FROM store_locations JOIN store_sales
ON  store_locations.StoreId = store_sales.Store_ID
WHERE State ='Colorado'

`Q2: What is the revenue breakdown by year and month for the sales territory?`
-- -- Q2: Revenue by year and month for West Colorado (in-store sales)
-- Joined Store_Sales to Store_Locations to keep only Colorado stores, using the Q1 Query 
-- then grouped by YEAR and MONTH of Transaction_Date and summed Sale_Amount.
-- Result: 48 rows (Jan 2022 to Dec 2025). Yearly revenue grew from about
-- $1.0M in 2022 to $2.4M in 2025, with a peak in October 2025 (about $331K).
-- Check: the 48 monthly totals add up to the Q1 total, $6,412,632.22.

SELECT State , Month (Transaction_Date) AS Month_Sale , year(Transaction_Date) AS Year_Sale , 
CONCAT ('$', FORMAT(SUM(Sale_Amount),2)) AS Total_Revenue
 FROM store_locations JOIN store_sales
ON  store_locations.StoreId = store_sales.Store_ID   
WHERE State ='Colorado'
GROUP BY Month_Sale , Year_Sale











