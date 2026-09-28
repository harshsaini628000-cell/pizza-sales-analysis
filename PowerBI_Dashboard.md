# 📊 Power BI Dashboard — Pizza Sales Report (Jan 2015 – Dec 2015)

An interactive two-page dashboard built in Power BI on the `pizza_sales` table.

## 1. Dashboard Overview

| Item | Details |
|------|---------|
| Title | Pizza Sales Report (Jan/15 – Dec/15) |
| Pages | **Home** (trends and mix) and **Best/Worst** (top and bottom pizzas) |
| Slicers | **Pizza Category** (dropdown) and **Date range** (1/1/2015 – 12/31/2015) |
| Navigation | HOME and BEST/WORST buttons in the left panel |
| Theme | Purple header, orange/brown bars, KPI cards with icons |

## 2. Page 1 — Home

**KPI cards (top row):** Total Revenue · Total Pizza Sold · Avg Order Value · Avg Pizza Per Order · Total Orders

**Visuals:**

| Visual | Type | Purpose |
|--------|------|---------|
| Daily Trend For Total Order | Column chart (Sun–Sat) | Busiest days |
| Monthly Trend For Total Order | Area chart (Jan–Dec) | Seasonality |
| % Of Sale Pizza Category | Donut | Category share |
| % Of Sale Pizza Size | Donut | Size mix |
| Total Pizza By Pizza Category | Bar | Quantity by category |

**Left panel text:** Busiest Days & Time (days, months) and Sale Performance (category, size).

### KPI values by category filter

| Category | Total Revenue | Pizzas Sold | Avg Order Value | Avg Pizza / Order | Total Orders |
|----------|--------------:|------------:|----------------:|------------------:|-------------:|
| Classic | 220.05K | 14,888 | 20.26 | 1.37 | 10,859 |
| Supreme | 208.20K | 11,987 | 22.92 | 1.32 | 9,085 |
| Chicken | 195.92K | 11,050 | 22.95 | 1.29 | 8,536 |
| Veggie | 193.69K | 11,649 | 21.66 | 1.30 | 8,941 |

### Home page screenshots

| Chicken | Classic |
|---------|---------|
| ![Home - Chicken](images/16_home_chicken.png) | ![Home - Classic](images/17_home_classic.png) |

| Supreme | Veggie |
|---------|--------|
| ![Home - Supreme](images/18_home_supreme.png) | ![Home - Veggie](images/19_home_veggie.png) |

### Daily orders by category

| Day | Chicken | Classic | Supreme | Veggie |
|-----|--------:|--------:|--------:|-------:|
| Sun | 1,015 | 1,343 | 1,121 | 1,068 |
| Mon | 1,171 | 1,404 | 1,159 | 1,136 |
| Tue | 1,170 | 1,489 | 1,314 | 1,215 |
| Wed | 1,177 | 1,481 | 1,285 | 1,293 |
| Thu | 1,267 | 1,658 | 1,379 | 1,345 |
| **Fri** | **1,440** | **1,823** | **1,482** | **1,511** |
| Sat | 1,296 | 1,661 | 1,345 | 1,373 |

Friday is the peak day in every category.

### Pizza size share by category

| Size | Chicken | Classic | Supreme | Veggie |
|------|--------:|--------:|--------:|-------:|
| Large | 52.24% | 33.86% | 45.27% | 53.80% |
| Medium | 33.29% | 27.53% | 31.93% | 29.48% |
| Regular | 14.47% | 31.75% | 22.80% | 16.72% |
| X-Large | – | 6.40% | – | – |
| XX-Large | – | small share | – | – |

## 3. Page 2 — Best/Worst

The same KPI cards and slicers, plus six bar charts: **Top 5** and **Bottom 5** pizzas by **Revenue**, **Quantity** and **Total Orders**. The left panel has Best Sellers and Worst Sellers summary text.

### Chicken
![Best/Worst - Chicken](images/20_bestworst_chicken.png)

| Rank | Top by Revenue | Top by Quantity | Top by Orders |
|------|---------------|-----------------|---------------|
| 1 | Thai Chicken – 43,434 | Barbecue Chicken – 2,432 | Barbecue Chicken – 2,273 |
| 2 | Barbecue Chicken – 42,768 | Thai Chicken – 2,371 | Thai Chicken – 2,225 |
| 3 | California Chicken – 41,410 | California Chicken – 2,370 | California Chicken – 2,197 |
| 4 | Southwest Chicken – 34,706 | Southwest Chicken – 1,917 | Southwest Chicken – 1,825 |
| 5 | Chicken Alfredo – 16,900 | Chicken Alfredo – 987 | Chicken Alfredo – 967 |

Lowest of the chicken pizzas: **Chicken Pesto** (16,702 revenue · 973 quantity · 938 orders).

### Classic
![Best/Worst - Classic](images/21_bestworst_classic.png)

| Rank | Top by Revenue | Top by Quantity | Top by Orders |
|------|---------------|-----------------|---------------|
| 1 | Classic Deluxe – 38,181 | Classic Deluxe – 2,453 | Classic Deluxe – 2,329 |
| 2 | Hawaiian – 32,273 | Hawaiian – 2,422 | Hawaiian – 2,280 |
| 3 | Pepperoni – 30,162 | Pepperoni – 2,418 | Pepperoni – 2,278 |
| 4 | Greek – 28,454 | Big Meat – 1,914 | Big Meat – 1,811 |
| 5 | Italian Capocollo – 25,094 | Napolitana – 1,464 | Napolitana – 1,421 |

Lowest: **The Pepperoni, Mushroom, and Peppers Pizza** (18,835 revenue · 1,359 quantity · 1,316 orders).

### Supreme
![Best/Worst - Supreme](images/22_bestworst_supreme.png)

| Rank | Top by Revenue | Top by Quantity | Top by Orders |
|------|---------------|-----------------|---------------|
| 1 | Spicy Italian – 34,831 | Sicilian – 1,938 | Spicy Italian – 1,822 |
| 2 | Italian Supreme – 33,477 | Spicy Italian – 1,924 | Sicilian – 1,820 |
| 3 | Sicilian – 30,941 | Italian Supreme – 1,884 | Italian Supreme – 1,791 |
| 4 | Pepper Salami – 25,529 | Prosciutto and Arugula – 1,457 | Prosciutto and Arugula – 1,398 |
| 5 | Prosciutto and Arugula – 24,193 | Pepper Salami – 1,446 | Pepper Salami – 1,383 |

Lowest: **The Brie Carre Pizza** (11,588 revenue · 490 quantity · 480 orders); Soppressata, Calabrese and Spinach Supreme are also near the bottom.

### Veggie
![Best/Worst - Veggie](images/23_bestworst_veggie.png)

| Rank | Top by Revenue | Top by Quantity | Top by Orders |
|------|---------------|-----------------|---------------|
| 1 | Four Cheese – 32,266 | Four Cheese – 1,902 | Four Cheese – 1,809 |
| 2 | Mexicana – 26,781 | Vegetables + Vegetables – 1,526 | Vegetables + Vegetables – 1,463 |
| 3 | Five Cheese – 26,067 | Mexicana – 1,484 | Mexicana – 1,426 |
| 4 | Vegetables + Vegetables – 24,375 | Spinach and Feta – 1,446 | Spinach and Feta – 1,402 |
| 5 | Spinach and Feta – 23,271 | Five Cheese – 1,409 | Five Cheese – 1,359 |

Lowest: **The Green Garden Pizza** by revenue (13,956); **The Mediterranean Pizza** by quantity (934) and orders (912).

## 4. Dashboard Insights

- **Friday** is the busiest day in every category, and **Classic** is the largest category.
- **Large** is the top size in every category, with Chicken and Veggie above 50%.
- Chicken and Supreme have the highest average order values (about 22.9), while Classic has the lowest (20.26) but the most orders.
- Each category's Best/Worst page is led by a different pizza, so category-level filtering shows menu strengths that the overall view hides.

## 5. Improvements to Consider

1. **Dynamic summary text.** The left-panel text on the Best/Worst page is static. It names The Thai Chicken Pizza as top revenue and The Brie Carre Pizza as the worst on every category page, even though these change with the filter. Replace it with DAX measures that read from the filtered data.
2. **Bottom 5 vs Top 5 overlap.** Each category has only 6–8 pizzas, so under a category filter the Bottom 5 chart repeats several pizzas from the Top 5. Consider showing Top 3 / Bottom 3 when a category is selected.
3. **Monthly text check.** The Home page says July and January are the busiest months, but the SQL result shows May (1,853) above January (1,845).
