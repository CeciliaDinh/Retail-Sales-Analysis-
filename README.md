# Retail Profit Optimization & Customer Segmentation Analysis

> A 4-year transactional data analysis project identifying profitability leaks and delivering actionable strategies through machine learning.

---

## Executive Summary

Despite maintaining steady revenue, the store suffers from a stagnant profit margin of **~12%**. This project traces the root cause to flawed discount strategies (vouchers >20% produce net losses) and policy abuse by bulk-purchasing customers. The solution combines discount restructuring, product bundling, and K-Means + PCA customer segmentation to deliver a clear roadmap for ROI optimization.

---

## Dataset Overview

The dataset contains **4 years of retail transaction records** across 21 fields covering orders, customers, products, and financials.

| Field | Description |
|---|---|
| `Row ID` | Unique row identifier |
| `Order ID` | Unique order identifier |
| `Order Date` / `Ship Date` | Transaction and fulfillment dates |
| `Ship Mode` | Shipping method (First Class, Second Class, etc.) |
| `Customer ID` / `Customer Name` | Customer identifiers |
| `Segment` | Customer segment: Consumer, Corporate, Home Office |
| `Country`, `City`, `State`, `Postal Code`, `Region` | Geographic fields |
| `Product ID` / `Product Name` | Product identifiers |
| `Category` / `Sub-Category` | Product hierarchy |
| `Sales` | Revenue per line item |
| `Quantity` | Units ordered |
| `Discount` | Discount rate applied (0–1) |
| `Profit` | Net profit per line item |

**Sample record:**
```
Row 1 | CA-2016-152156 | 11/8/2016 | Consumer | Henderson, Kentucky | Furniture > Bookcases
Bush Somerset Collection Bookcase | Sales: $261.96 | Qty: 2 | Discount: 0% | Profit: $41.91
```

---

## Business Context

Three product categories — **Furniture, Office Supplies, Technology** — sold to three customer segments:

- **Consumer (B2C):** Core revenue driver. Average tenure of **1,434 days**. Revenue ~4× higher than other segments.
- **Corporate (B2B):** Scalable grower. Average tenure ~1,000 days. Specializes in high-functionality tools.
- **Home Office:** Moderate buyer. High-end conferencing equipment priority.

### The Profitability Paradox

Discounts correlate **positively** with quantity sold but **negatively** with both revenue and profit. Loss-making orders cluster heavily around:
- Discounts **> 20%**
- Bulk purchases above the **75th percentile** in quantity

---

## Project Objectives

1. **Optimize Revenue** — Identify high-margin products not dependent on heavy discounting
2. **Optimize Voucher ROI** — Evaluate true cost-effectiveness; eliminate loss-generating discount tiers
3. **Segment Customers by Behavior** — Use K-Means + PCA to identify 9 behavioral personas beyond default demographics

---

## Key Findings

### Discount Impact Analysis

| Discount Tier | Avg. Profit Margin | Notes |
|---|---|---|
| No discount | **+34.02%** | Best margin; many products need no promotion |
| Low (<10%) | +15.58% | Positive margin, limited volume impact |
| Medium (10–20%) | **+17.48%** | Sweet spot — best revenue + margin balance |
| High (>20%) | **–78.45%** | Severe losses; break-even requires 4,458+ units |

### High-Margin Flagship Products

| Product | Revenue | Profit Margin |
|---|---|---|
| Canon imageCLASS 2200 | $123K | ~38% |
| Fellowes PB500 Electric Punch | $50K | ~44% |
| HP LaserJet 3310 | $37K | ~33% |
| GBC / Ibico / Ativa Binding Tools | Varies | 32–49% |

### Category Strategy

- **Furniture (21.3% margin):** Avoid all high discounts. Focus on B2B relationships and bundling.
- **Office Supplies (29.5% margin):** Highest margin category — do not discount deeply. B2C customers abusing B2B vouchers (up to 80%) cause significant losses.
- **Technology (~28.9% margin):** Use 5–10% discounts only for reactivation. Prefer value-added services over price cuts.

---

## Machine Learning: 9 Customer Behavioral Clusters

Using **K-Means Clustering + PCA** on RFM (Recency, Frequency, Monetary) combined with geographic and category data:

| Cluster | Name | Key Behavior | Action |
|---|---|---|---|
| 0 | Premium Deal Hunters | Buy only with ~80% discounts; negative profit | Flash sales only; switch to loyalty point redemption |
| 1 | Loyal Office Veterans | Long-tenure East region; high monetary, low recency | "We Miss You" reactivation + VIP perks |
| 2 | South Savvy Shoppers | Accept low/no discounts; high profit, good recency | Tailored recommendations + referral bonuses |
| 3 | West Furniture Fans | Mid-range discounts; good frequency/profit | Seasonal campaigns + free installation |
| 4 | Stable West Office Buyers | Prefer <20% discounts; moderate profit | Bulk order reminders + business dashboards |
| 5 | Premium Central Buyers | Zero discount sensitivity; high profit | VIP loyalty tiers + concierge support |
| 6 | Tech Bargain Spikers | Only buy Tech with ~70% discounts; high loss | Tighten discount limits; shift to accessory bundles |
| 7 | Frequent Losers | High R&F but low monetary; 60% discounts on Furniture | Restrict deep discounts; limit flash sales per account |
| 8 | Golden Newcomers | High recency; zero discounts; Office Supplies + Tech | Welcome Kit + loyalty program enrollment |

---

## Recommendations

1. **Eliminate discounts >20%** except for dead-stock clearance
2. **Shift acquisition strategy** to medium discounts (10–20%) as the standard
3. **Implement bundle campaigns** — e.g., Printer + Chair for Consumer segment; bulk B2B packages for Corporate
4. **Transition from price-slashing to value-added loyalty** — free installation, subscriptions for consumables, VIP tiers
5. **Audit bulk purchase policy** to prevent B2C customers from accessing B2B vouchers
6. **Replicate March 2014 Home Office spike** — investigate what internal campaign drove the $26K outlier

---

## Tech Stack

- **Language:** Python
- **Libraries:** pandas, scikit-learn (K-Means, PCA), matplotlib, seaborn
- **Methods:** RFM Analysis, K-Means Clustering, PCA, Pearson Correlation, Cohort Analysis

---

## Author

**Dinh Thi Thanh Hang**  
Retail Analytics | Customer Segmentation | Profitability Optimization
