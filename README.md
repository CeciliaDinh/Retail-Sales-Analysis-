# 🧠 Retail Profit Optimization & Customer Segmentation Analysis
**Author:** Dinh Thi Thanh Hang  

![Data Analysis](https://img.shields.io/badge/Data-Analysis-blue?style=for-the-badge)
![Clustering](https://img.shields.io/badge/Machine_Learning-K--Means_&_PCA-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📑 Executive Summary
This project analyzes 4 years of transactional data from a retail store to identify profitability leaks and generate actionable, data-driven strategies. 

**The Challenge:** Despite maintaining a decent revenue stream, the store suffers from a stagnant profit margin of **~12%**. 
**Key Findings:** The root cause lies in flawed discount strategies (vouchers >20% lead to massive losses) and policy abuse by customers making bulk purchases. 
**The Solution:** By overhauling the discount structure, implementing strategic product bundling, and utilizing **K-Means Clustering & PCA** to segment customers into 9 distinct behavioral personas, this project provides a clear roadmap to optimize ROI, restructure marketing spend, and maximize overall profit.

---

## 🔍 Business Context
This online retail store sells 3 product categories: **Furniture, Office Supplies, and Technology** to distinct customer segments:
- **B2C (Consumer)**: Long-term buyers with an Average Customer Tenure of **1,434 days**.
- **B2B (Corporate & Home Office)**: Relatively newer segment with an average tenure of **~1,000 days**.

**The Profitability Paradox:**
- Discounts increase the quantity purchased *(positive Pearson correlation)*.
- However, they correlate **negatively** with both total revenue and profit.
- Many loss-making orders are heavily concentrated around:
  - Discounts **> 20%**
  - Bulk purchases *(above the 75th percentile in quantity)*.

---

## 🎯 Project Objectives

1. **Optimize Revenue 💰**  
   - Identify high-performing and high-margin products.
   - Prioritize scalable products that are not reliant on heavy discounting.

2. **Optimize Marketing Spend (Voucher ROI) 📉**  
   - Evaluate the true cost-effectiveness of discounts.
   - Detect high-discount orders that lead directly to net losses.
   - Propose a refined voucher strategy based on ROI.

3. **Segment Customers Based on Behavior 👥**  
   - Go beyond default demographics (Consumer, Corporate, Home Office).
   - Use **K-means Clustering & PCA** to identify behavior-driven personas. *(Why? Because some B2C customers exhibit B2B-like habits, making basic RFM biased. K-means learns true behaviors combined with RFM metrics).*
   - Design tailored sales and loyalty programs for each segment.

---

## 📊 Summary Of Insights: Customer Demographics

### 1. 🛍️ Consumer Segment (The Core Driver)
Core revenue driver with **4x higher revenue** than the other two segments. Follows a strong seasonal pattern with peaks in March, May, September, and October. Historical peaks reached $20K+ during key months.
- **Top Products:** Canon imageCLASS 2200 Copier (33K sales), HP DesignJet T520 Printer, HON 5400 Series Chairs, GBC Binding Machines.
- **Key Insight:** Consumers prioritize multifunctional office equipment and ergonomic furniture.
- **Recommendations:** Offer bundle deals (e.g., *Printer + Chair*), launch seasonal campaigns (*Back to School, WFH Setup*), and consider subscription models for consumables.

> **Deep Dive: Consumer Category Breakdown**
> - **Office Supplies:** 10x YoY growth! Jumped from <$5K/month (2014-2015) to $19.9K in Jan 2017. Now contributes 30%+ of revenue during peaks. *(Action: Launch Sep-Jan bundles, target SME bulk orders).*
> - **Furniture:** Strong seasonality tied to workspace refresh & holidays. Spiked to $22.17K in Dec 2016. *(Action: Push high-margin Q4 bundles, avoid discounting low-margin SKUs).*
> - **Technology:** Surges driven by academic cycles (e.g., $23K in Oct 2014). *(Action: Retarget students/hybrid workers, bundle high-margin tech vs. deep discounts).*

### 2. 🏢 Corporate Segment (The Scalable Grower)
Scalable segment with consistent growth. Notably, Oct 2017 hit an all-time high ($23K), surpassing the Consumer segment, though spending dropped sharply afterward (possible one-off purchase).
- **Top Products:** 3D Systems Cube Printer, Fellowes Binding Machines, Cubify CubeX 3D Printer.
- **Key Insight:** Corporate buyers invest heavily in specialized, high-functionality tools for R&D.
- **Recommendations:** Create B2B bulk packages, use value-based pricing, and implement Account-Based Marketing (ABM) for design firms/labs.

> **Deep Dive: Corporate Category Breakdown**
> - **Technology:** Top performer. Grew steadily to $4.3K (Jan 2017) and peaked at $23.7K (Nov 2017 - 3x YoY). *(Action: Analyze Nov spike, target bundle deals in Mar/Sep/Nov).*
> - **Office Supplies:** Reliable 2nd-best category. Outlier in Aug 2017 hit $14K despite zero sales in prior Augusts. *(Action: Investigate anomaly, launch back-to-work bundles).*
> - **Furniture:** Clear Q4 growth trend. Dec 2017 peaked at $12.9K. *(Action: Focus on Q4 workspace upgrades, pair with consulting/layout services).*

### 3. 🏠 Home Office Segment (The Moderate Buyer)
Moderate buyers with a massive historical outlier (a sudden $26K spike in March 2014). 
- **Top Product:** Cisco TelePresence EX90 (22K sales).
- **Key Insight:** Home office users prioritize high-end conferencing gear for professional remote communication.
- **Recommendations:** Position Cisco EX90 as the flagship remote work tool, offer "Premium Home Office Kits", and upsell noise-canceling headsets/desks. *(Action: Revisit internal campaigns/events from March 2014 to replicate success).*

> **Deep Dive: Home Office Category Breakdown**
> - **Technology:** 6x YoY growth from 2016-2017. Peaked at $19.9K in Sep 2017. 
> - **Office Supplies:** Spiked in Sep 2016 ($9.2K) but declined later. *(Action: Investigate demand drop—saturation or marketing lapse?)*
> - **Furniture:** Steady YoY growth, peaking at $12.13K in Nov 2017 (3x YoY). *(Action: Cross-sell with Office Supplies for SME upgrades).*

---

## 📉 Discount Campaigns & Profitability Analysis

### 🔍 The Rule of Discounts
- ⛔ **High Discounts (>20%):** Lead to significant profit loss (avg. **-78.45%**) and unsustainable break-even volumes (4,458+ units). *Must be eliminated unless clearing dead stock.*
- ✅ **Medium Discounts (10–20%):** The "Sweet Spot". Offers the best balance between sales volume and profitability (Highest revenue overall, **+17.48%** avg. margin).
- ⚠️ **Low Discounts (<10%):** Maintain positive margins (15.58%) but have limited impact on sales volume.
- 💰 **No Discount:** Yields the highest profit margin (**34.02%**). Many products perform perfectly well without promotions.

### 🧩 Category-Specific Strategy
- **🛋️ Furniture:** Lowest profit margin (21.3%). Avoid high discounts entirely. Shift focus to relationship-building (B2B gifts, after-care services) and bundle with high-margin Office Supplies.
- **🗂️ Office Supplies:** Highest profit margin (29.5%). Avoid deep discounts here! Analysis shows many loss-making orders happen when B2C customers abuse up to 80% B2B discount vouchers for bulk orders.
- **💻 Technology:** Strong margin (~28.9%). Use 5-10% discounts purely for customer reactivation. Offer value-added services (e.g., Free installation/support) instead of price cuts.

### 💎 High-Margin Flagship Products
Focus marketing efforts on the top 20% of products driving profit:
| Product | Revenue | Profit Margin |
| :--- | :--- | :--- |
| **Canon imageCLASS 2200** | $123K | ~38% |
| **Fellowes PB500 Electric Punch** | $50K | ~44% |
| **HP LaserJet 3310** | $37K | ~33% |
| **GBC / Ibico / Ativa Binding Tools** | Varies | 32–49% |

---

## 🧬 Machine Learning: 9 Customer Behavioral Clusters
*Using K-Means & PCA, we identified 9 distinct segments to replace blanket marketing with hyper-personalized strategies.*

* **Cluster 0 – Premium Deal Hunters 🚨**
  * *Behavior:* Buy ONLY with heavy discounts (~80%). High order value but negative profit. Mostly new customers buying Appliances/Machines.
  * *Action:* Flash sales only (limit 1 item/account). Replace discounts with loyalty point redemption.
* **Cluster 1 – Loyal Office Veterans 🎖️**
  * *Behavior:* Long-time East region buyers. Buy Office Supplies regardless of discounts. High monetary, low recency.
  * *Action:* "We Miss You" reactivation campaign, VIP perks (free shipping), and subscription plans.
* **Cluster 2 – South Savvy Shoppers ☀️**
  * *Behavior:* Buy Furniture & Office Supplies. Accept low/no discounts. High profit, good recency.
  * *Action:* Tailored product recommendations and referral bonuses to expand the Southern base.
* **Cluster 3 – West Furniture Fans 🛋️**
  * *Behavior:* West region furniture buyers. Mid-range to no discounts. Good frequency/profit.
  * *Action:* Seasonal campaigns ("Spring Workspace Refresh") and free installation perks.
* **Cluster 4 – Stable West Office Buyers 📎**
  * *Behavior:* Prefer <20% discounts. Few unprofitable orders, moderate profit.
  * *Action:* Promote business dashboards, bulk order discounts, and automated reorder reminders.
* **Cluster 5 – Premium Central Buyers 💎**
  * *Behavior:* Strong overall RFM. Buy Office Supplies. High profit, zero discount sensitivity.
  * *Action:* VIP loyalty tiers, concierge support, quarterly gifts, and customer spotlight programs.
* **Cluster 6 – Tech Bargain Spikers 📉**
  * *Behavior:* Only buy Tech with extreme discounts (~70%). Low Recency/Frequency, high loss.
  * *Action:* Tighten discount limits immediately. Shift to tech accessory bundles (mouse/cables) to recover margins.
* **Cluster 7 – Frequent Losers 💸**
  * *Behavior:* High R & F, but low Monetary. Buy Furniture with up to 60% discounts. Consistently loss-making.
  * *Action:* Restrict deep discounts. Limit to single-item flash sales per account.
* **Cluster 8 – Golden Newcomers ⭐**
  * *Behavior:* High recency, purchased Office Supplies + Tech using ZERO discounts. Highly profitable.
  * *Action:* Send a "Welcome Kit" and enroll in loyalty programs to cement brand engagement.

---
**Next Steps:** Shift entirely to Medium Discounts (10-20%) for acquisition, build the personalized campaigns defined by the 9 clusters, and transition to value-added loyalty programs over price-slashing.
