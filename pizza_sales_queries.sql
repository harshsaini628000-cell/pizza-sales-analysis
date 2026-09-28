-- ============================================================================
-- PIZZA SALES ANALYSIS (Jan 2015 - Dec 2015)
-- Database : PostgreSQL (run in pgAdmin)
-- Table    : pizza_sales
-- Note     : order_date is stored as text in DD-MM-YYYY format, so date
--            functions use TO_DATE(order_date, 'DD-MM-YYYY').
-- ============================================================================


-- ============================================================================
-- SECTION A: KPIs
-- ============================================================================

-- ============================================================================
-- 1. Total Revenue: The sum of the total price of all pizza orders.
-- Result: 817860.05
-- ============================================================================

SELECT
    SUM(total_price) AS total_price
FROM pizza_sales;


-- ============================================================================
-- 2. Average Order Value: total revenue / total number of orders.
-- Result: 38.31
-- ============================================================================

SELECT
    ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS avg_amount_spent_perorder
FROM pizza_sales;


-- ============================================================================
-- 3. Total Pizzas Sold: The sum of the quantities of all pizzas sold.
-- Result: 49574
-- ============================================================================

SELECT
    SUM(quantity) AS total_pizza_sold
FROM pizza_sales;


-- ============================================================================
-- 4. Total Orders: The total number of orders placed.
-- Result: 21350
-- ============================================================================

SELECT
    COUNT(DISTINCT order_id) AS total_order_placed
FROM pizza_sales;


-- ============================================================================
-- 5. Average Pizzas Per Order: total pizzas sold / total orders.
-- Result: 2.32
-- ============================================================================

SELECT
    ROUND(SUM(quantity)::NUMERIC / COUNT(DISTINCT order_id), 2) AS avg_sold_pizza_perorder
FROM pizza_sales;


-- ============================================================================
-- SECTION B: TIME-BASED TRENDS
-- ============================================================================

-- ============================================================================
-- 6. Daily Trend: Total orders by day of the week
-- ============================================================================

SELECT
    TO_CHAR(TO_DATE(order_date, 'DD-MM-YYYY'), 'FMDay') AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY
    TO_CHAR(TO_DATE(order_date, 'DD-MM-YYYY'), 'FMDay'),
    EXTRACT(ISODOW FROM TO_DATE(order_date, 'DD-MM-YYYY'))
ORDER BY EXTRACT(ISODOW FROM TO_DATE(order_date, 'DD-MM-YYYY'));


-- ============================================================================
-- 7. Monthly Trend: Total orders by month
-- ============================================================================

SELECT
    TO_CHAR(TO_DATE(order_date, 'DD-MM-YYYY'), 'FMMonth') AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY
    TO_CHAR(TO_DATE(order_date, 'DD-MM-YYYY'), 'FMMonth'),
    EXTRACT(MONTH FROM TO_DATE(order_date, 'DD-MM-YYYY'))
ORDER BY EXTRACT(MONTH FROM TO_DATE(order_date, 'DD-MM-YYYY'));


-- ============================================================================
-- SECTION C: CATEGORY PERFORMANCE
-- ============================================================================

-- ============================================================================
-- 8. Percentage share of pizzas sold by category
-- ============================================================================

SELECT
    pizza_category,
    SUM(quantity) AS total_quantity_sold,
    ROUND(
        (SUM(quantity)::NUMERIC / (SELECT SUM(quantity) FROM pizza_sales)) * 100,
        2
    ) AS pct_share
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_quantity_sold DESC;


-- ============================================================================
-- 9. Total pizzas sold by category
-- ============================================================================

SELECT
    pizza_category,
    SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_quantity_sold DESC;


-- ============================================================================
-- SECTION D: BEST SELLERS (TOP 5 PIZZAS)
-- ============================================================================

-- ============================================================================
-- 10. Top 5 by Revenue
-- ============================================================================

SELECT
    pizza_name,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC
LIMIT 5;


-- ============================================================================
-- 11. Top 5 by Total Quantity Sold
-- ============================================================================

SELECT
    pizza_name,
    SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- ============================================================================
-- 12. Top 5 by Total Orders Placed
-- ============================================================================

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC
LIMIT 5;


-- ============================================================================
-- SECTION E: WORST SELLERS (BOTTOM 5 PIZZAS)
-- ============================================================================

-- ============================================================================
-- 13. Bottom 5 by Revenue
-- ============================================================================

SELECT
    pizza_name,
    ROUND(SUM(total_price), 2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue ASC
LIMIT 5;


-- ============================================================================
-- 14. Bottom 5 by Total Quantity Sold
-- ============================================================================

SELECT
    pizza_name,
    SUM(quantity) AS total_quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity_sold ASC
LIMIT 5;


-- ============================================================================
-- 15. Bottom 5 by Total Orders Placed
-- ============================================================================

SELECT
    pizza_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders ASC
LIMIT 5;
