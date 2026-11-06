# Capstone 1: EmporiUm Sales Territory Analysis

**Author:** Mohammed Sohaib Lalmi | **Course:** DATA BOOTCAMP, YearUp United | **Instructor:** Nigel Caldon | **Date:** November 2026
**Territory:** Colorado (in-store sales), West Region

## Overview

EmporiUm is a student-focused retail chain selling books, technology and art supplies. Using SQL (MySQL Workbench) and Excel, I analyzed Colorado's 18 stores in the `sample_sales` database and recommend where to focus sales efforts next quarter.

## Key Findings

| # | Question | Finding |
|---|---|---|
| 1 | Total revenue and dates | **$6,412,632.22** from Jan 1, 2022 to Dec 31, 2025 (46,498 transactions) |
| 2 | Revenue by year and month | Grew from about **$1.0M (2022)** to **$2.4M (2025)**; peak month Oct 2025 (about $331K) |
| 3 | Colorado vs. West region | Colorado is about **8.6%** of the West's $74.4M; the rest is the Online territory, so this is a benchmark only |
| 4 | Transactions and average sale by category | **Technology & Accessories** is about **71%** of revenue ($4.55M) with the highest average sale (about $464) |
| 5 | Store ranking | **Denver** (about $917K) and **Greeley** (about $640K) lead; the other 16 stores earn $279K-$345K |

![Colorado revenue by month and year](Picture1.png)

## Recommendation

Focus next quarter on **Technology & Accessories in the lower-performing Colorado stores** (e.g. Parker, Wheat Ridge, Berthoud, Milliken), with stock and promotions ready before July, August and October.

- Revenue is growing, so demand is rising.
- Technology is 71% of revenue and has the highest average sale.
- The 16 smaller stores earn far less than Denver and Greeley, so they have the most room to grow.

The data shows where the opportunity is, not why or whether a promotion will work, so I would test it in a few stores and ask the managers what Denver and Greeley do differently.

## Files

| File | Description |
|---|---|
| `Lalmi_sales_analysis.sql` | SQL queries and recommendation |
| `Lalmi_territory_chart.xlsx` | Excel PivotChart |
| `Lalmi_bonus_queries.sql` | Optional bonus queries |

**To reproduce:** run `sample_sales.sql` in MySQL Workbench, then run `Lalmi_sales_analysis.sql` in order, then open the Excel file.

**Video walkthrough:** *(link coming soon)*

**Contact:** mlalmi@my.yearupunited.org 
  
