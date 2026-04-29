# Retail Profit Optimization — From Transactional Data to Strategic Decisions

> 4 years · 3 product categories · 3 customer segments · ~12% profit margin that shouldn't be this low

---

## Executive Summary

A retail store with healthy order volume and consistent revenue was quietly underperforming on profit. This project investigates *why* — and builds a data-backed roadmap to fix it.

**The core finding:** margin erosion is not a product problem. It is a discount and customer management problem.

Three patterns emerged from four years of transactional data:

- **Discounts above 20% destroy margins systematically.** Orders in this tier average −78% profit. They are concentrated among a specific behavioral subset of customers — not distributed randomly across the base.
- **The top 20% of products account for a disproportionate share of both revenue and profit.** The remaining 80% are drag — many subsidized by discounts that were never designed to generate returns.
- **Standard customer segments (Consumer, Corporate, Home Office) obscure actionable behavioral differences.** When segmented by actual purchasing behavior, nine distinct personas emerge — each with a different relationship to discounting, product preference, and lifetime value.

**Business impact of recommendations, if implemented:**
- Eliminating high-discount orders is projected to recover margin on a significant portion of currently loss-making revenue
- Redirecting discount budget toward loyalty and bundling programs targets retention over acquisition, improving LTV
- Segment-specific campaigns replace blanket promotions, reducing wasted spend on customers who convert without incentives

---

## The Problem

Despite stable order volumes across Consumer, Corporate, and Home Office segments, the store's net profit margin sits at approximately **12%** — well below industry benchmarks for a diversified retail operation.

Initial correlation analysis pointed to a clear culprit:

- Discount depth has a **positive correlation with quantity purchased** — discounts do drive volume
- But discount depth has a **negative correlation with both revenue and profit** — the volume gains do not offset the margin destruction

This is a textbook voucher mismanagement problem. The store is trading profit for orders that would not have been worth taking at full economics.

The question was: *which orders, which customers, and which products are driving the losses?*

---

## Methodology

### Data Scope
Four years of transaction-level retail data covering order value, discount applied, product category, quantity, profit, customer ID, segment label, and region.

### Analytical Approach

| Question | Method |
|---|---|
| Where are losses concentrated? | Percentile analysis on discount tiers; loss-order flagging at >75th percentile quantity |
| Which products drive margin vs. revenue? | Category-level and SKU-level margin decomposition |
| Who are the real customer segments? | K-Means clustering on behavioral RFM + discount features, with PCA dimensionality reduction |

### Why K-Means + PCA Instead of RFM Alone?

Standard RFM (Recency, Frequency, Monetary) segmentation assumes customers within the same commercial label behave similarly. The data contradicted this: a subset of Consumer-tagged accounts displayed B2B-like bulk purchasing behavior, artificially inflating the segment's loss rate.

K-Means clustering — applied after PCA reduced feature noise — learns segment boundaries directly from behavior. The result is nine clusters defined not by how customers were labeled, but by what they actually do: what they buy, how often, at what discount depth, and how profitably.

---

## Key Findings

### 1. Discount Tier Analysis

| Tier | Avg. Profit Margin | Revenue Share | Verdict |
|---|---|---|---|
| No discount | **+34.0%** | High | Many products need no promotion to sell |
| Low (< 10%) | +15.6% | Moderate | Sustainable; limited incremental volume effect |
| Medium (10–20%) | **+17.5%** | Highest | Optimal zone — best balance of volume and margin |
| High (> 20%) | **−78.5%** | Significant | Systematic loss driver; must be restructured |

High-discount orders are not an edge case. They represent a meaningful share of total revenue — and nearly all of the profit destruction.

### 2. Category-Level Performance

| Category | Profit Margin | Revenue Rank | Strategic Note |
|---|---|---|---|
| Office Supplies | 29.5% | 2nd | Highest margin; strong bundling potential |
| Technology | ~28.9% | 1st | Highest revenue; margin at risk from over-discounting |
| Furniture | 21.3% | 3rd | Lowest margin; discount dependency accelerates losses |

Furniture is the most structurally vulnerable category: already the thinnest margins, and disproportionately represented in high-discount and loss-making orders. Discount reduction here has the fastest margin recovery potential.

### 3. Top Revenue-Generating Products (by sales)

| Product | Revenue | Category |
|---|---|---|
| Canon imageCLASS 2200 Copier | $123K | Technology |
| HP DesignJet T520 Printer | — | Technology |
| HON 5400 Series Chairs | — | Furniture |
| Fellowes PB500 Electric Punch | $50K | Office Supplies |
| GBC / Ibico Binding Tools | Varies | Office Supplies |

High-revenue products are not always high-margin products. Bundling high-revenue items with high-margin complements (e.g., printer + binders + consumables) increases average order value without requiring additional discount spend.

---

## Customer Segmentation

Nine behavioral clusters were identified. For strategic execution, they are grouped into four actionable cohorts based on shared characteristics, discount behavior, and recommended intervention type.

---

### Cohort A — Protect and Grow (Clusters 1, 4, 5)

**Who they are:** Long-tenure customers with strong purchasing history, low discount dependency, and consistently profitable orders. Primarily purchase Office Supplies. Distributed across East, West, and Central regions.

**Behavioral signal:** These customers convert without deep discounts. Many are showing declining recency — not because they churned, but because they have not been given a reason to return.

**Risk:** Neglect. This cohort generates reliable profit and receives the least targeted attention precisely because they do not create problems.

**Strategy:**
- Launch a tiered loyalty program with perks that reinforce behavior already observed: early access, reorder reminders, free shipping thresholds — not cash discounts
- For the highest-RFM cluster (Cluster 5, Central region): offer VIP account management, quarterly business reviews, and product previews
- Reactivation sequence for lapsed buyers (Cluster 1): value-led re-engagement, not promotional — remind them of what they bought, suggest logical next purchases

---

### Cohort B — Convert Before They Drain Margin (Clusters 0, 6, 7)

**Who they are:** Customers who only purchase under heavy discount conditions — 60–80% discount depth — with a mix of new accounts and high-frequency buyers. Orders in this cohort are responsible for the majority of loss-making transactions. Cluster 7 is particularly notable: high recency and frequency, but nearly every order is unprofitable.

**Behavioral signal:** These customers are arbitraging the discount system, not responding to brand or product value. Cluster 0 tends toward new accounts with high AOV; Cluster 6 is Technology-specific; Cluster 7 is the most operationally damaging — frequent buyers generating consistent losses.

**Risk:** Continued unstructured access to deep discounts will compound margin destruction as frequency increases.

**Strategy:**
- Implement hard caps on discount depth and order quantity per account (e.g., flash sale access limited to one item per account, applied once per quarter)
- Introduce a points-based loyalty system where discount access is earned through profitable order history — not available by default
- For Cluster 7 specifically: trigger a margin-floor rule at the order level; any order projected to generate negative margin at > 40% discount depth is flagged for manual review before fulfilment
- Do not invest in retention campaigns for this cohort until buying behavior normalizes

---

### Cohort C — Expand in the Right Markets (Clusters 2, 3)

**Who they are:** Regionally concentrated buyers (South and West) purchasing Furniture and Office Supplies with low or no discount usage. Good recency, above-average profit per order.

**Behavioral signal:** These customers demonstrate willingness to pay near-full price. They are likely under-served in terms of product range and cross-sell exposure — they buy what they know, not what they could benefit from.

**Risk:** Untapped revenue. This cohort's order frequency and AOV could both increase with targeted product exposure.

**Strategy:**
- Deploy personalized product recommendation sequences based on past purchases — if a customer bought a desk, surface ergonomic chairs, monitor arms, and storage within 30–60 days
- Launch regional seasonal campaigns: workspace refresh (Q1), back-to-work (Q3), year-end office upgrade (Q4)
- Introduce referral incentives to expand the customer base in South and West regions — these customers are the profile worth replicating
- Offer value-added services (free delivery, installation, layout consultation) as retention levers in lieu of discounts

---

### Cohort D — Activate Carefully (Cluster 8)

**Who they are:** New customers with strong recency. No discount usage observed. Purchase mix spans Office Supplies and Technology. High potential lifetime value if engaged correctly in the first 90 days.

**Behavioral signal:** These customers arrived without discount incentives and made a first purchase. That is the highest-quality acquisition signal in the dataset. The risk is post-purchase inertia — they buy once and drift.

**Risk:** Losing high-quality new customers to inactivity because there is no structured onboarding journey.

**Strategy:**
- Deploy a structured 90-day onboarding sequence: welcome communication at day 1, product education at day 14, cross-sell recommendation at day 30, loyalty enrollment prompt at day 60
- Introduce a welcome loyalty points grant on the first order — activates the points system early without requiring a discount
- Track 90-day repeat purchase rate as the primary KPI for this cohort; adjust onboarding sequence based on conversion data

---

## Strategic Recommendations Summary

**On discounting:**
Eliminate discount tiers above 20% except for planned inventory clearance events with defined SKU scope and volume limits. Redirect discount budget toward loyalty mechanics and value-added services, which generate retention at lower cost-to-margin.

**On product strategy:**
Scale marketing investment in the top 20% of products by margin contribution. Design bundle architectures that pair high-revenue items (Technology hardware) with high-margin complements (Office Supplies consumables, accessories). Avoid leading with Furniture in promotional campaigns — protect the category by leading with service differentiation instead.

**On customer management:**
Implement segment-specific intervention playbooks for each of the four cohorts above. Measure success not by order volume, but by margin per cohort and cohort migration rate (customers moving from Cohort B behavior to Cohort A behavior over 12 months).

---

## Repository Structure

```
retail-profit-optimization/
├── data/
│   └── transactions_4yr.csv
├── notebooks/
│   ├── 01_eda.ipynb                   # Exploratory data analysis & correlation mapping
│   ├── 02_discount_analysis.ipynb     # Discount tier segmentation & loss-order detection
│   ├── 03_product_analysis.ipynb      # SKU and category-level margin decomposition
│   ├── 04_customer_clustering.ipynb   # PCA + K-Means segmentation pipeline
│   └── 05_summary_dashboard.ipynb     # Executive-facing visual summary
└── outputs/
    ├── cluster_profiles/
    ├── discount_impact_charts/
    └── margin_by_category/
```

---

## Tools & Methods

- **Python** — pandas, NumPy, scikit-learn, matplotlib, seaborn
- **Clustering** — K-Means with PCA preprocessing (feature noise reduction prior to clustering)
- **Statistical analysis** — Pearson correlation, percentile-based outlier detection, break-even volume modeling
- **Segmentation** — Behavioral RFM construction, cluster profiling, cohort strategy mapping

---

*Project by Dinh Thi Thanh Hang — Business Analytics Portfolio*
