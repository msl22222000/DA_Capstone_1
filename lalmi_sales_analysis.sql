-- ============================================================
-- CAPSTONE 1: EMPORIUM SALES TERRITORY ANALYSIS
-- Sales territory analyzed: Colorado (in-store sales)
-- Region: West
-- ============================================================
-- SELECT * FROM management;
-- SELECT * FROM inventory_categories;
-- SELECT * FROM inventory_subcategories;
-- SELECT * FROM online_sales;
-- SELECT * FROM products;
-- SELECT * FROM shipper_list;
-- SELECT * FROM store_locations;
-- SELECT * FROM store_sales;
-- ============================================================
-- Q1: Total revenue and date range
-- Question: What is total revenue overall for the territory, plus the
--           start and end dates of the data?
-- Result:   $6,412,632.22 from 2022-01-01 to 2025-12-31 (main KPI)
-- ============================================================

SELECT State, CONCAT('$', FORMAT(SUM(Sale_Amount), 2)) AS Total_Revenue , MIN(Transaction_Date) AS Start_Date ,
 MAX(Transaction_Date) AS End_Date
FROM store_locations JOIN store_sales
ON  store_locations.StoreId = store_sales.Store_ID
WHERE State ='Colorado'
GROUP BY State;
-- ============================================================
-- Q2: Revenue by year and month
-- Question: What is the revenue breakdown by year and month?
-- Result:   48 rows (Jan 2022 - Dec 2025). Yearly revenue grew from
--           about $1.0M in 2022 to $2.4M in 2025.
--  Strongest months are July, August and October (October 2025
--           peaked at about $331K). February is often the weakest.
-- ============================================================

SELECT State , Month (Transaction_Date) AS Month_Sale , year(Transaction_Date) AS Year_Sale ,
CONCAT ('$', FORMAT(SUM(Sale_Amount),2)) AS Total_Revenue
 FROM store_locations JOIN store_sales
ON  store_locations.StoreId = store_sales.Store_ID
WHERE State ='Colorado'
GROUP BY State,Month_Sale , Year_Sale
ORDER BY Year_Sale, Month_Sale;

-- ============================================================
-- Q3: Colorado vs. the West region
-- Question: How does Colorado revenue compare with total West revenue?
-- Result:   Colorado $6,412,632.22 vs West $74,417,459.27
-- Benchmark: Colorado is about 8.6% of the West region, because the
--           online territory is much larger.
-- ============================================================

SELECT CONCAT('$', FORMAT((SELECT SUM(ss.Sale_Amount)
FROM Store_Sales ss JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
 WHERE sl.State = 'Colorado'), 2)) AS Colorado_Revenue,
  CONCAT('$', FORMAT((SELECT SUM(ss.Sale_Amount) FROM Store_Sales ss JOIN Store_Locations sl
  ON ss.Store_ID = sl.StoreId
  JOIN Management m ON sl.State = m.State
  WHERE m.Region = 'West') + (SELECT SUM(os.SalesTotal)
  FROM Online_Sales os), 2)) AS West_Region_Revenue;


-- ============================================================
-- Q4: Transactions and average sale by product category
-- Question: What is the number of transactions per month and the
--           average transaction amount by product category?
--   Technology & Accessories brings in about $4.55M of the
--           $6.41M (71%) and has the highest average sale 

-- ============================================================
SELECT ic.Category, MONTH(ss.Transaction_Date) AS Sales_Month, YEAR(ss.Transaction_Date) AS Sales_Year ,COUNT(ss.id) AS Number_Of_Transactions,
CONCAT('$', FORMAT(ROUND(AVG(ss.Sale_Amount), 2), 2)) AS Average_Sale
FROM Store_Sales ss JOIN Store_Locations sl ON ss.Store_ID = sl.StoreId
JOIN Products p ON ss.Prod_Num = p.ProdNum
JOIN Inventory_Categories ic ON p.Categoryid = ic.Categoryid
WHERE sl.State = 'Colorado'
GROUP BY  MONTH(ss.Transaction_Date) ,YEAR(ss.Transaction_Date), ic.Category
ORDER BY Sales_Year, Sales_Month, ic.Category

-- ============================================================
-- Q5: Store ranking
-- Question: How do the Colorado stores rank by in-store sales?
-- Insight:  Denver (about $917K, 14%) and Greeley (about $640K, 10%)
--           lead. The other 16 stores earn about $279K-$345K each; the
--           Colorado average is about $356K per store. The lowest are
--           Parker, Wheat Ridge, Berthoud and Milliken.
-- ============================================================

SELECT  StoreLocation ,
COUNT(Transaction_Date) AS Number_Of_Transactions,
CONCAT('$',FORMAT(SUM(Sale_Amount),2)) AS Total_Revenue
FROM Store_Sales  JOIN Store_Locations sl ON Store_ID = StoreId
WHERE State = 'Colorado'
GROUP BY sl.StoreLocation
ORDER BY SUM(Sale_Amount) DESC;


-- ============================================================
-- Q6: RECOMMENDATION
-- Focus next quarter on Technology & Accessories in the lower-performing
-- Colorado stores (for example Parker, Wheat Ridge, Berthoud and
-- Milliken), with promotions ready before the strongest months.
--
-- Why (evidence from this analysis):
--   1. KPI (Q1, Q2): revenue is $6.41M and growing, from $1.0M in 2022
--      to $2.4M in 2025, so demand is rising.
--   2. Product (Q4): Technology & Accessories is 71% of revenue and has
--      the highest average sale (about $464).
--   3. Stores (Q5): Denver and Greeley carry about 24% of revenue; the
--      other 16 stores earn only 4-5% each, so the weaker stores have
--      the most room to grow.
--   4. Benchmark (Q3): Colorado is about 8.6% of the West region, so
--      growth inside the territory matters for the region.
--   5. Timing (Q2): July, August and October are the strongest months
--      (October 2025 peak of about $331K), so stock and promotions
--      should be ready before them.
--
-- Expected impact: if the weaker stores move closer to the Colorado
-- average of about $356K per store, the territory grows without
-- opening new stores.











