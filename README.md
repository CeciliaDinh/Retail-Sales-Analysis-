# 🧠 Retail Profit Optimization Project

Author: **Dinh Thi Thanh Hang**  
Project Goal: Analyze 4 years of transactional data from a retail store to identify profitability issues and generate actionable strategies to maximize profit.

---

## 🔍 Business Context

This online retail store sells three main product categories:
- Furniture
- Office Supplies
- Technology

Across three customer segments:
- Consumer (B2C)
- Corporate (B2B)
- Home Office (B2B)

**Key Observations:**
- B2C customers have longer tenure (~1434 days) compared to B2B (~1000 days).
- Store revenue is decent but profit margins are low (~12%).
- Discounts increase quantity sold but negatively impact both revenue and profit.
- High-discount (>20%) and bulk-purchase orders often lead to losses.

---

## 🎯 Project Objectives

1. **Optimize Revenue**
   - Prioritize high-performing, high-margin products.
   - Reduce dependency on discount-driven sales.

2. **Optimize Marketing Spend (Voucher ROI)**
   - Identify non-profitable voucher campaigns.
   - Propose discount strategies based on ROI.

3. **Customer Segmentation & Personalization**
   - Apply PCA + K-means to identify customer behavior clusters.
   - Design tailored sales & loyalty programs per segment.

---

## 📊 Key Insights

### 🧑‍💼 Segment Analysis

#### Consumer Segment
- **Top Products**: Canon Copier, HP Printers, Ergonomic Chairs
- **Revenue Peaks**: March, May, September, October
- **Recommendations**:
  - Seasonal campaigns (e.g. Back to School)
  - Bundling deals (Printer + Chair)
  - Subscription models for consumables

#### Corporate Segment
- **Top Products**: 3D Printers, Binding Machines
- **Behavior**: High-value, one-off R&D purchases
- **Recommendations**:
  - B2B bulk packages
  - Account-Based Marketing (targeting design firms, universities)
  - Focus on seasonal Q4 furniture bundles

#### Home Office Segment
- **Top Product**: Cisco TelePresence EX90
- **Insight**: High-end conferencing tools for remote work
- **Recommendations**:
  - Premium home office kits (chair + video gear)
  - Cross-sell: headsets, desks
  - Analyze March 2014 & Sep 2017 spikes

---

## 🧩 Cross-Segment Insights

- Usability & multifunctionality drive sales across all segments.
- 3D printers and conferencing tools deliver high ROI in niche groups.

### Recommendations:
- Bundle complementary products.
- Target campaigns during peak months.
- Introduce loyalty programs.

---

## 📉 Discount Campaign Analysis

| Discount Level | Profit Margin | Recommendation |
|----------------|---------------|----------------|
| > 20%          | -78.45%       | Eliminate unless stock clearance |
| 10–20%         | +17.48%       | Best balance → Focus here |
| < 10%          | +15.58%       | Positive margin, but low impact |
| No Discount    | +34.02%       | Best profit, should be scaled |

---

## 🛍️ Category-Level Strategy

### Furniture
- Lowest profit margin.
- Avoid high discounts.
- Focus on service & B2B relationships.

### Office Supplies
- Highest profit margin (~29.5%).
- Avoid deep discounts (>20%) due to loss-making bulk orders.

### Technology
- High revenue + strong margins (~28.9%).
- Give light discounts (5–10%) to re-engage churned customers.
- Bundle offers (e.g. Monitor + Mouse + Free Setup).

---

## 📦 Product Strategy

### Top Products (High Margin + High Sales)

| Product                           | Revenue | Profit Margin |
|-----------------------------------|---------|----------------|
| Canon imageCLASS 2200 Copier     | $123K   | ~38%           |
| Fellowes PB500 Electric Punch     | $50K    | ~44%           |
| HP LaserJet 3310                  | $37K    | ~33%           |
| GBC / Ibico Binding Tools         | Varies  | 32–49%         |

**Actions:**
- Scale and prioritize campaigns for these products.
- Design smart bundles.
- Launch B2B-specific marketing.

---

## 🔍 Customer Segmentation (K-means + PCA)

| Cluster | Description                        | Behavior                             |
|---------|------------------------------------|--------------------------------------|
| 0       | Premium Deal Hunters               | Heavy discounts (~80%), high loss    |
| 1       | Loyal Office Veterans              | No/low discount, low recency         |
| 2       | South Savvy Shoppers               | Low discount, high profit            |
| 3       | West Furniture Fans                | Mid/No discount, good frequency      |
| 4       | Stable West Office Buyers          | Moderate profit, low loss            |
| 5       | Premium Central Buyers             | Discount-insensitive, high profit    |
| 6       | Tech Bargain Spikers               | Low RFM, deep discounts              |
| 7       | Frequent Losers                    | High R & F, negative margins         |
| 8       | Golden Newcomers                   | High R, no discount, high profit     |

---

## 🚀 Next Steps

- Shift toward medium discount range (10–20%).
- Retain profitable segments with loyalty perks.
- Deep dive into high-performing products without discounts.
- Identify high-risk customers (loss-prone behavior).
- Build personalized, behavior-driven marketing funnels.

---

## 📌 Summary

> This project showcases how advanced analytics (RFM, clustering, discount optimization) can uncover hidden profit levers in retail data. By segmenting both products and customers intelligently, it’s possible to shift away from unsustainable discounting and toward long-term profitability through strategic bundling, loyalty incentives, and B2B targeting.

---

**Status**: ✅ Completed

**Tools**: Python (Pandas, NumPy, Scikit-learn, Matplotlib, Seaborn), SQL, Tableau/Power BI

**License**: MIT






