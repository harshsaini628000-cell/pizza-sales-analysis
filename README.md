# 🍕 Pizza Sales Analysis — SQL + Power BI

An end-to-end sales analysis of a pizza restaurant's 2015 orders. Business questions are answered with **PostgreSQL** queries and the results are presented in an interactive **Power BI** dashboard.

## 📌 Objectives

- Calculate the core sales KPIs (revenue, orders, pizzas sold, averages)
- Find the busiest **days** and **months**
- Compare **categories** and **sizes**
- Identify the **top 5** and **bottom 5** pizzas by revenue, quantity and orders
- Present everything in a dashboard filterable by category and date

## 🛠️ Tools

| Tool | Purpose |
|------|---------|
| PostgreSQL + pgAdmin | Data storage and SQL analysis |
| Power BI Desktop | Interactive dashboard |

## 🗂️ Dataset

Single table `pizza_sales` (Jan 2015 – Dec 2015). Columns used: `order_id`, `order_date` (text, `DD-MM-YYYY`), `pizza_name`, `pizza_category`, `pizza_size`, `quantity`, `total_price`.

## 📁 Project Files

```
pizza-sales-analysis/
├── README.md                  # This file
├── pizza_sales_queries.sql    # All 15 SQL queries, commented
├── PowerBI_Dashboard.md       # Dashboard pages, visuals, per-category results
├── Pizza_Sales_Report.md      # Final report combining SQL + Power BI findings
└── images/                    # SQL output and dashboard screenshots (23)
```

| File | What's inside |
|------|---------------|
| [`pizza_sales_queries.sql`](pizza_sales_queries.sql) | KPIs, daily/monthly trends, category share, top 5 and bottom 5 pizzas |
| [`PowerBI_Dashboard.md`](PowerBI_Dashboard.md) | Home and Best/Worst pages for Chicken, Classic, Supreme and Veggie, plus improvement ideas |
| [`Pizza_Sales_Report.md`](Pizza_Sales_Report.md) | Executive summary, results, screenshots, insights, recommendations |

## 📊 Key KPIs

| KPI | Value |
|-----|------:|
| Total Revenue | 817,860.05 |
| Average Order Value | 38.31 |
| Total Pizzas Sold | 49,574 |
| Total Orders | 21,350 |
| Avg Pizzas Per Order | 2.32 |

## 🔎 Key Insights

- **Friday** is the busiest day (3,538 orders); **Sunday** is the slowest (2,624).
- **July** is the highest month shown (1,935 orders); February is the lowest (1,685).
- **Classic** is the top category (14,888 pizzas, 30.03%); **Large** is the top size in every category.
- **The Thai Chicken Pizza** earns the most revenue (43,434.25); **The Classic Deluxe Pizza** leads in quantity and orders.
- **The Brie Carre Pizza** is the weakest on every metric (11,588.50 revenue, 490 pizzas, 480 orders).

## 🖥️ Dashboard Preview
📊 [View the Executive Presentation (PDF)](presentation/Pizza_Sales_Performance_2015.pdf)
![Home - Classic](images/17_home_classic.png)

![Best/Worst - Classic](images/21_bestworst_classic.png)

## ▶️ How to Reproduce

1. Create the `pizza_sales` table in PostgreSQL and import the CSV.
2. Run the queries in `pizza_sales_queries.sql` in pgAdmin.
3. Connect Power BI to the same table and build the visuals described in `PowerBI_Dashboard.md`.
4. Read `Pizza_Sales_Report.md` for the findings.
