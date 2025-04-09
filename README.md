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

---

## 📊 Key Analyses

### 1. 📈 Revenue Analysis
- ABC Analysis
- Product Profitability Matrix (Revenue vs Profit Margin)

### 2. 💸 Discount Effectiveness
- Correlation between discount and quantity/sales/profit
- Deep dive into:
  - Top 10 loss-making products at 80% discount
  - Orders with bulk quantity but negative profit
- Discount ROI framework: Revenue uplift vs Cost of discount

### 3. 👥 Customer Behavior
- RFM Analysis
- Behavioral Clustering using PCA + KMeans
- Discount Dependency Scoring
- Repeat Rate comparison: With vs Without Voucher

---

## ✅ Outcomes

- List of products to promote/scale without discounts
- Thresholds for profitable vs loss-making discount levels
- Revised voucher policy for deal-hunters vs loyal customers
- Segmented customer base with tailored loyalty strategy

---

## 📂 Folder Structure

project/
│
├── data/
│   └── raw/clean/processed/
├── notebooks/
│   ├── 01_EDA.ipynb
│   ├── 02_Revenue_Analysis.ipynb
│   ├── 03_Discount_Analysis.ipynb
│   ├── 04_Behavioral_Clustering.ipynb
│   └── 05_Recommendation_Plan.ipynb
├── reports/
│   └── final_summary.pdf
└── README.md


