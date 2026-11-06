# DA_Capstone_1
# Capstone 1: EmporiUm Sales Territory Analysis

| | |
|---|---|
| **Author** | Mohammed Sohaib Lalmi |
| **Course** | DATA BOOTCAMP, YearUp United |
| **Instructor** | Nigel Caldon |
| **Date** | November 2026 |
| **Sales Territory Analyzed** | Colorado (West Region) |

---

## Project Overview

EmporiUm is a student-focused retail chain that sells books, technology products and art supplies through physical stores and an online channel. This project analyzes in-store sales performance for the **Colorado** sales territory (18 stores), which belongs to the company's **West** region. Using SQL and Excel, I answer a set of business questions posed by the sales manager and recommend where sales efforts should be focused in the next quarter.

## Business Objectives

- Measure total revenue and identify the period the data covers.
- Understand how revenue changes by year and by month.
- Compare Colorado's performance with the West region as a whole.
- Analyze transaction volume and average transaction value by product category.
- Rank stores by performance.
- Provide a data-supported recommendation for the next quarter.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| MySQL / MySQL Workbench | Querying the `sample_sales` database |
| Microsoft Excel | PivotTables and PivotCharts |
| Microsoft PowerPoint | Final presentation |
| Git and GitHub | Version control and project submission |
| Visual Studio Code | Editing scripts and documentation |

## Dataset

The analysis uses the `sample_sales` database, which contains eight tables:

| Table | Description |
|---|---|
| `Store_Sales` | In-store transactions |
| `Online_Sales` | Online transactions |
| `Products` | Product details |
| `Inventory_Categories` | Product categories |
| `Inventory_Subcategories` | Product subcategories |
| `Store_Locations` | Store names and states |
| `Management` | Regions, directors and sales managers |
| `Shipper_List` | Shipping information |

Tables are connected through shared keys such as `Store_ID`/`StoreId`, `Prod_Num`/`ProdNum` and `Categoryid`.

## Methodology

1. Loaded the database by running `sample_sales_all` in MySQL Workbench.
2. Explored each table's structure and relationships.
3. Wrote SQL queries to answer each business question, using joins, aggregation, grouping and subqueries.
4. Exported the Question 2 results to CSV and built a PivotTable and PivotChart in Excel.
5. Checked the results: the 48 monthly totals add up to the Question 1 total, and the transaction counts by category add up to 46,498.
6. Interpreted the results and formulated a recommendation.

## Key Questions and Findings

| # | Question | Summary of Finding |
|---|---|---|
| 1 | Total revenue and date range | Colorado in-store revenue is **$6,412,632.22** from **January 1, 2022 to December 31, 2025**, across 46,498 transactions. This is the main KPI. |
| 2 | Revenue by year and month | Revenue grew from about **$1.0M in 2022** to **$2.4M in 2025**. October 2025 was the highest month at about **$331K**. July and August were above June in all four years. |
| 3 | Territory vs. region revenue | Colorado ($6.41M) is about **8.6%** of the West region ($74.4M). The rest is the Online Sales territory (about $68.0M), which sells to many states, so this is a benchmark for size, not a sign of poor performance. |
| 4 | Monthly transactions and average amount by category | **Technology & Accessories** brings in about **$4.55M (71%)** of revenue and has the highest average sale, about **$464**. |
| 5 | Store performance ranking | **Denver** (about $917K) and **Greeley** (about $640K) lead and together make up about 24% of revenue. The other 16 stores earn between about **$279K and $345K** each. The Colorado average is about $356K per store. |

## Recommendation

Focus next quarter on **Technology & Accessories in the lower-performing Colorado stores** (for example Parker, Wheat Ridge, Berthoud and Milliken), and have stock and promotions ready before the strongest months (July, August and October).

1. **Demand is rising.** Revenue grew from $1.0M in 2022 to $2.4M in 2025.
2. **One category drives the business.** Technology & Accessories is 71% of revenue and has the highest average sale.
3. **The smaller stores have the most room to grow.** Denver and Greeley carry about 24% of revenue, while each of the other 16 stores earns only about 4-5%. The average sale is similar across stores, so the gap is the number of transactions, not price.

If the weaker stores move closer to the Colorado average of about $356K per store, the territory grows without opening new stores.

## Conclusion

Colorado is a healthy and growing territory: $6.4M in in-store revenue over four years, with 2025 about 2.4 times higher than 2022. Revenue is concentrated in one category (Technology & Accessories) and two stores (Denver and Greeley). The other 16 stores sit close together, so lifting technology sales there is the most direct way to grow. The data shows where the opportunity is, not why. I would test the plan in a few stores first and ask the store managers what Denver and Greeley do differently.

## Repository Contents

| File | Description |
|---|---|
| `README.md` | Project documentation |
| `lalmi_sales_analysis.sql` | SQL queries and recommendation |
| `lalmi_colorado_pivot table.csv` | Exported query results used for the PivotTable |
| `lalmi_colorado_chart.xlsx` | Excel workbook with the PivotTable and PivotChart |
| `lalmi_colorado_presentation.pptx` | Final presentation |
| `sample_sales_all` | Script that creates the `sample_sales` database |

## How to Reproduce

1. Run `sample_sales_all` in MySQL Workbench to create the database.
2. Open `lalmi_sales_analysis.sql` and run the queries in order.
3. Open `lalmi_colorado_chart.xlsx` to view the PivotTable and PivotChart.

## Video Walkthrough
https://yearuptemp-my.sharepoint.com/:v:/g/personal/mlalmi_my_yearupunited_org/IQDZHIZu2AhcRoBNZ6eDdr51AdByoVW2_YgKQolXaE8t10E?e=flFJ1E&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbE1vZGUiOiJtaXMiLCJyZWZlcnJhbFZpZXciOiJwb3N0cm9sbC1jb3B5bGluayIsInJlZmVycmFsUGxheWJhY2tTZXNzaW9uSWQiOiJjMjAyZjlhOC0xNjliLTQ0NjYtYjQxYi1kZDE0ZGU0Y2U4NjIifX0%3D


## Contact

Mohammed Sohaib Lalmi  
mlalmi@my.yearupunited.org
