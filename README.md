# 🧠 Retail Profit Optimization Project

This project aims to analyze 4 years of transactional data from a retail store, identify profitability issues, and generate actionable strategies to maximize profit.

---

## 🔍 Business Context

Despite having a decent revenue stream, the store suffers from low profit margins (currently ~12%). Initial analysis shows:

- Discounts increase quantity purchased (positive Pearson correlation),
- But they correlate negatively with both revenue and profit,
- Many loss-making orders are concentrated around:
  - Discounts > 20%,
  - Bulk purchases (above 75th percentile in quantity).

---

## 🎯 Project Objectives

1. **Optimize Revenue**  
   - Identify high-performing and high-margin products  
   - Prioritize scalable products not reliant on discounting

2. **Optimize Marketing Spend (Voucher ROI)**  
   - Evaluate cost-effectiveness of discounts  
   - Detect high-discount orders that lead to losses  
   - Propose refined voucher strategy based on ROI

3. **Segment Customers Based on Behavior**  
   - Go beyond the default segments (Consumer, Corporate, Home Office)  
   - Use clustering & PCA to identify behavior-driven customer personas  
   - Design sales/loyalty programs tailored to each segment


## Summary Of Insights 
# Consumer Sales Trend Breakdown by Product Categories

## 🔹 **Home Office Segment – Small but High-Potential**

- **Key Traits**: Smallest segment but focuses on high-end tech and premium setups.
- **Technology**: Rapid growth from **$5.9K in Jan 2016** to **$19.9K in Sept 2017** (+2.5× YoY). Notable spike in **March 2014** ($26K).
  - **Action**: Investigate March 2014 and Sept 2017 spikes to replicate successful drivers.
- **Seasonality**: New activity in **June–July** (previously inactive). Peak months: **Sept & Oct**.
- **Office Supplies**: Spiked at **$9.2K in Sept 2016**, but declined in 2017.
  - **Action**: Investigate the drop and relaunch via **bundling with Furniture** to revive sales.
- **Furniture**: Steady growth, peaked at **$12.13K in Nov 2017** (+3× YoY).
  - **Action**: Leverage **bundles** (Furniture + Office Supplies) to increase cart size and profit.

---

## 🔹 **Corporate Segment – Consistent, Strategic Buying**

- **Key Traits**: Predictable seasonal patterns, batch purchases, and scalable opportunities.
- **Technology**: Growth from **$1.7K in Jan 2015** to **$4.3K in Jan 2017**, peaking at **$23.7K in Nov 2017** (+3× YoY).
  - **Action**: Identify Nov 2017 spike trigger and replicate across key months (**Mar, Sept, Nov**).
- **Office Supplies**: Surge in **August 2017** ($14K, no prior August activity).
  - **Action**: Reinforce campaigns in **August** (aligned with fiscal planning/project prep).
- **Furniture**: Steady growth, strong in **Dec 2017** ($12.94K).
  - **Action**: Push **"Office Refresh" campaigns** in **Q4** and offer **layout consulting services**.

---

## 🔹 **Consumer Segment – High Growth with Seasonal Peaks**

### 1. **Office Supplies**
- **Insight**: Dramatic rise from **<$5K monthly in 2014–2015** to **$19.9K in Jan 2017**, nearly **10x YoY growth**.
- **Behavioral Hypothesis**: Spikes likely align with **back-to-school**, **business planning**, or **SMEs restocking inventory**.
- **Strategic Importance**: Contributed **32%** of total Consumer revenue in peak months (2017).
- **Action Recommendation**:
  - Run **flash sales** or **bundles** (e.g., Notebooks + Pens + Organizers) from **Sep–Jan**.
  - Target **small-ticket repeat buyers** and **SMEs** with seasonal bulk purchases.

---

### 2. **Furniture**
- **Insight**: Sales peaked in **Sep, Oct**, and **Dec** each year with notable spikes:
  - **$16.45K in Oct 2016**
  - **$22.17K on Dec 1, 2016**
  - **$3.6K in Jan 2016** (6x increase in peak months).
- **Behavioral Hypothesis**: Spikes likely align with **space refresh** or **home-office upgrades** during year-end, possibly due to **holiday sales** or **employee home-office prep**.
- **Action Recommendation**:
  - Prioritize **high-margin bundles** (e.g., Desk + Chair, Shelf + Storage) in **Q4**.
  - Sync campaigns with **Black Friday**, **12.12**, and **Year-End Sale**.
  - Avoid discounting low-margin items; focus on **value-added bundles** for profitability.

---

### 3. **Technology**
- **Insight**: Technology sales show volatile but high-value spikes:
  - **May 2016: $20.7K**
  - **Sep 2016: $17.8K**
  - **Oct 2014: $23K** (highest single transaction).
- **Behavioral Hypothesis**: Likely driven by **academic/work-related upgrades** (e.g., back-to-school, onboarding), with a mix of **B2C** and **prosumer** demand.
- **Action Recommendation**:
  - Run **retargeting campaigns** in **April** and **August**.
  - Target **student cohorts** (via school email sign-ups) and **SMEs/hybrid workers** prepping for new cycles.
  - Promote **high-margin bundles** (e.g., Laptop + Mouse + Monitor).
  - Offer **free installation** or **mouse gifts** instead of heavy discounts during seasonal promotions.

---

## 🔧 **Summary Action Plan**:
- **Home Office Segment**: Focus on high-end tech, target **premium bundles** and **seasonal campaigns**. Investigate and replicate key spikes in **March 2014** and **Sept 2017**.
- **Corporate Segment**: Leverage **consistent buying patterns**, reinforce campaigns during key months (**Aug, Nov, Dec**), and promote **office refresh** campaigns.
- **Consumer Segment**: Focus on **flash sales** and **bundles** for **small businesses** and **recurrent customers**. Use **holiday campaigns** to optimize year-end spending and align with seasonal peaks.




