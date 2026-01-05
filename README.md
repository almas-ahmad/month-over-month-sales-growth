# month-over-month-sales-growth
This repository demonstrates how to calculate monthly subscription sales, derive previous month sales using window functions, and compute MoM growth percentages with a clear, optimized SQL approach.

📌 Problem Statement
Calculate the Month-over-Month (MoM) sales growth using SQL.

The goal is to:
1. Calculate total subscription sales month-wise.
2. Fetch previous month sales using the `LAG()` window function.
3. Compute MoM growth percentage.


  🛠 Tools Used
- SQL (MySQL compatible syntax)
- Window Functions
- Common Table Expressions (CTEs)

🧠 Approach & Logic

 Step 1: Monthly Sales Calculation
- Aggregated subscription revenue month-wise using `SUM()`
- Extracted year and month from transaction date
- Grouped data by month

 Step 2: Previous Month Sales
- Used `LAG()` window function to fetch previous month sales
- Ordered data chronologically by month

Step 3: MoM Growth Calculation
Used the formula:
