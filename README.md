# DA_Capstone_1
# Capstone 1: EmporiUm Sales Territory Analysis

| | |
|---|---|
| **Author** | Mohammed Sohaib Lalmi |
| **Course** | DATA BOOTCAMP, YearUP United |
| **Instructor** | Nigel Caldon |
| **Date** | November 2026 |
| **Sales Territory Analyzed** | West Colorado (West Region) |


---

## Project Overview

EmporiUm is a student-focused retail chain that sells books, technology products and art supplies through physical stores and an online channel. This project analyzes sales performance for the **West Colorado** sales territory, which belongs to the company's **West** region. Using SQL and Excel, I answer a set of business questions posed by the sales manager and recommend where sales efforts should be focused in the next quarter.

## Business Objectives

- Measure total revenue and identify the period the data covers.
- Understand how revenue changes by year and by month.
- Compare West Colorado's performance with the West region as a whole.
- Analyze transaction volume and average transaction value by product category.
- Rank stores by performance.
- Provide a data-supported recommendation for the next quarter.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| MySQL / MySQL Workbench | Querying the `sample_sales` database |
| Microsoft Excel | PivotTables and PivotCharts |
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

1. Loaded the database by running `sample_sales.sql` in MySQL Workbench.
2. Explored each table's structure and relationships.
3. Wrote SQL queries to answer each business question, using joins, aggregation and grouping.
4. Exported query results to CSV and built a PivotChart in Excel.
5. Interpreted the results and formulated a recommendation.

## Key Questions and Findings

| # | Question | Summary of Finding |
|---|---|---|
| 1 | Total revenue and date range | [Add your finding] |
| 2 | Revenue by year and month | [Add your finding] |
| 3 | Territory vs. region revenue | [Add your finding] |
| 4 | Monthly transactions and average amount by category | [Add your finding] |
| 5 | Store performance ranking | [Add your finding] |

## Recommendation

[Summarize in 3 to 5 sentences where sales efforts should focus next quarter and the evidence supporting it.]

## Repository Contents

| File | Description |
|---|---|
| `README.md` | Project documentation |
| `[lastname]_sales_analysis.sql` | SQL queries and recommendation |
| `[lastname]_territory_chart.xlsx` | Excel workbook with the PivotChart |
| `[lastname]_bonus_queries.sql` | Optional bonus queries |

## How to Reproduce

1. Run `sample_sales.sql` in MySQL Workbench to create the database.
2. Open `[lastname]_sales_analysis.sql` and run the queries in order.
3. Open `[lastname]_territory_chart.xlsx` to view the PivotChart.

## Video Walkthrough

[Watch the project walkthrough](Link will be provided once its completed)

## Contact

 Mohammed Sohaib Lalmi \
 mlalmi@my.yearupunited.org \
  
