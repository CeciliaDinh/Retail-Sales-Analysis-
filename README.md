# 🛒 Retail Profit Optimization — Turning 4 Years of Data into Actionable Strategy

> *A business analytics project that investigates why a profitable retail store isn't as profitable as it should be — and what to do about it.*

---

## 📖 The Story Behind This Project

Imagine a retail store selling Furniture, Office Supplies, and Technology to thousands of customers across Consumer, Corporate, and Home Office segments. Revenue looks decent. Orders are coming in. Discounts are flying out.

But profit margins sit at just **~12%**.

Something isn't adding up.

This project digs into **4 years of transactional data** to find out exactly where the money is leaking — and to build a concrete, data-backed strategy to fix it.

---

## 🔍 What We Discovered

The investigation revealed three core problems hiding in plain sight:

**1. Discounts are quietly destroying margins.**
Discounts above 20% correlate with an average profit loss of **−78.45%** — yet they persist across categories, especially in bulk orders. Many of these loss-making orders cluster around customers who exhibit B2B-like purchasing behavior while operating under B2C discount access.

**2. Not all products are created equal.**
The top 20% of products drive the vast majority of revenue *and* profit. Meanwhile, popular items like Furniture — despite strong sales volume — carry the lowest margins (~21%) and are frequently over-discounted.

**3. The default customer segments hide behavioral diversity.**
Standard segments (Consumer, Corporate, Home Office) mask significant variation in purchasing behavior. Some "Consumers" buy like enterprises. Some Corporate accounts are discount-insensitive and highly profitable. A one-size-fits-all promotion strategy leaves money on the table.

---

## 🎯 Project Objectives

| Objective | Approach |
|---|---|
| Optimize Revenue | Identify high-margin, scalable products not reliant on discounting |
| Maximize Discount ROI | Detect loss-making discount patterns; propose tier-based voucher strategy |
| Understand Customer Behavior | Go beyond default segments using clustering & PCA to surface behavioral personas |

---

## 🧠 Methodology

### Why K-Means Clustering + PCA — Not Just RFM?

Traditional RFM (Recency, Frequency, Monetary) scoring works well when customer segments are clearly defined. But when B2C customers behave like B2B buyers, RFM produces biased groupings.

**K-Means Clustering** learns directly from behavioral patterns — purchasing frequency, discount sensitivity, product affinity, and regional behavior — without forcing customers into pre-labeled buckets.

**PCA (Principal Component Analysis)** reduces dimensionality before clustering, removing noise and ensuring that behavioral signals drive the segmentation rather than correlated variables.

The result: **9 distinct behavioral personas** that reveal who your customers really are.

---

## 📊 Key Findings

### Discount Analysis

| Discount Tier | Avg. Profit Margin | Business Signal |
|---|---|---|
| No Discount | **+34.02%** | Many products perform best without promotions |
| Low (<10%) | +15.58% | Positive, limited volume impact |
| Medium (10–20%) | **+17.48%** | Best balance of volume and margin |
| High (>20%) | **−78.45%** | Significant loss driver — should be eliminated |

> **Recommendation:** Shift acquisition strategy toward medium discounts. Replace high-discount campaigns with loyalty programs and value-added bundles.

---

### Category-Level Performance

| Category | Profit Margin | Key Insight |
|---|---|---|
| Office Supplies | 29.5% | Highest margin; ideal for bundling and B2B targeting |
| Technology | ~28.9% | Highest revenue; protect margin by avoiding deep discounts |
| Furniture | 21.3% | Popular but margin-thin; value perks > price cuts |

---

### Customer Personas (K-Means, 9 Clusters)

| Cluster | Persona | Behavior | Strategy |
|---|---|---|---|
| 0 | **Premium Deal Hunters** | Buy only at ~80% discount; new customers; high AOV but negative profit | Flash sales capped at 1 item/account; loyalty point system |
| 1 | **Loyal Office Veterans** | Long-tenure East region buyers; Office Supplies; low recent activity | "We Miss You" reactivation; subscription plans |
| 2 | **South Savvy Shoppers** | Furniture & Office Supplies; accept low/no discounts; high profit | Referral programs; personalized product recommendations |
| 3 | **West Furniture Fans** | Mid-range or no discounts; good frequency and profit | Seasonal campaigns; free installation for repeat buyers |
| 4 | **Stable West Office Buyers** | Office Supplies; prefer <20% discount or none; few unprofitable orders | Business accounts with bulk dashboards; reorder reminders |
| 5 | **Premium Central Buyers** | Strong RFM; discount-insensitive; high profit | VIP loyalty tier; quarterly gifts; customer spotlight program |
| 6 | **Tech Bargain Spikers** | Technology only at ~70% discount; sporadic; some extreme loss orders | Tighten discount caps; accessory bundles with better margins |
| 7 | **Frequent Losers** | High frequency but many loss-making orders; Furniture + deep discounts | Cap discount per order; remove bulk eligibility |
| 8 | **Golden Newcomers** | New customers; no discounts; Office Supplies + Technology | Welcome Kit; loyalty point onboarding to drive retention |

---

## 💡 Strategic Recommendations Summary

**Revenue**
- Scale top 20% of products (high-margin + high-revenue) through focused marketing
- Bundle complementary items: Printer + Chair, Laptop + Monitor + Mouse, Desk + Office Supplies
- Launch seasonal campaigns tied to peak months: Sep–Oct (back-to-work), Nov–Dec (year-end refresh)

**Discount Strategy**
- Eliminate discounts >20% except for deliberate stock-clearance events
- Implement segment-aware discount caps (e.g., Cluster 0 and 6 require strict limits)
- Replace discount dependency with loyalty rewards and value-added services (free setup, delivery, installation)

**Customer Engagement**
- Design cluster-specific campaigns rather than blanket promotions
- Introduce subscription models for repeat office supply buyers (Clusters 1, 4)
- Build a VIP program for discount-insensitive, high-profit segments (Cluster 5)
- Re-engage dormant high-value customers (Cluster 1) before acquiring new ones

---

## 🗂️ Project Structure

```
retail-profit-optimization/
├── data/                  # Transactional dataset (4 years)
├── notebooks/
│   ├── 01_eda.ipynb              # Exploratory data analysis
│   ├── 02_discount_analysis.ipynb # Discount ROI & loss detection
│   ├── 03_product_analysis.ipynb  # Margin & revenue by product/category
│   ├── 04_customer_clustering.ipynb # PCA + K-Means segmentation
│   └── 05_dashboard_summary.ipynb  # Executive summary visuals
├── outputs/               # Charts, cluster profiles, recommendation decks
└── README.md
```

---

## 🛠️ Tools & Techniques

- **Python** — pandas, scikit-learn, matplotlib, seaborn
- **Clustering** — K-Means with PCA dimensionality reduction
- **Statistical Analysis** — Pearson correlation, percentile-based outlier detection
- **Visualization** — Segment dashboards, discount impact charts, RFM heatmaps

---

## 👤 Author

**Dinh Thi Thanh Hang**
*Business Analytics | Customer Segmentation | Retail Strategy*

---

*This project is part of a portfolio series on applied data analytics for business decision-making.*
