# 🧠 Retail Profit Optimization Project
# Author: Dinh Thi Thanh Hang


This project aims to analyze 4 years of transactional data from a retail store, identify profitability issues, and generate actionable strategies to maximize profit.

---

## 🔍 Business Context
- This online retail store sells 3 product categories: Furniture, Office Supplies, Technology for 3 customer segment: Consumer (B2B customer), and B2B customer groups such as Corporate and Home Office. 
- B2C customer has been purchasing over a long period of time, but B2B is relatively new compared to B2C 
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
# Best-selling Products Breakdown By Customer Segment

## 1. Consumer Segment: High Sales Volume & Practical Utility
- **Top Products**: 
  - Canon imageCLASS 2200 Copier: **33K sales**
  - HP DesignJet T520 Printer
  - HON 5400 Series Chairs
  - GBC Binding Machines

**Insight**: Consumers prioritize multifunctional office equipment and ergonomic furniture.  
**Recommendations**: 
- Offer bundle deals (e.g., *Printer + Chair*).
- Launch seasonal campaigns: *Back to School*, *Work-from-Home Setup*.
- Consider **subscription models** for consumables.

---

## 2. Corporate Segment: Niche, Specialized Products
- **Top Products**: 
  - 3D Systems Cube Printer
  - Fellowes Binding Machines
  - Cubify CubeX 3D Printer

**Insight**: Corporate buyers invest in specialized, high-functionality tools for R&D and presentations.  
**Recommendations**: 
- Create **B2B bulk packages**.
- Use **value-based pricing**.
- Implement **Account-Based Marketing (ABM)** targeting design firms, universities, research labs.

---

## 3. Home Office Segment: Preference for Premium Conferencing Equipment
- **Top Product**: Cisco TelePresence EX90: **22K sales**  
**Insight**: Home office users prioritize high-end conferencing gear for professional communication.  
**Recommendations**: 
- Position Cisco EX90 as a flagship for remote work.
- Offer **Premium Home Office Kits** (e.g., chair + video gear).
- Upsell related products: noise-canceling headsets, sit-stand desks.

---

## 4. Cross-Segment Insights: Usability & Multi-Functionality Drive Sales
- **Key Insight**: Usability and multi-functionality are top drivers of sales across segments.  
- **Niche Tools** like 3D printers and conferencing gear perform well in targeted groups, delivering high ROI per user.  
**Recommendations**: 
- **Bundle complementary products** (e.g., ergonomic chair + printer).
- Focus on **seasonal marketing** during peak months (e.g., back-to-school, Black Friday).
- Explore **loyalty programs** for repeat customers.

# 📉 Discount Campaigns Insights

## 🔍 Overall Findings

- **High Discounts (>20%)** lead to **significant profit loss** (avg. -78.45%) and unsustainable break-even volumes (4,458+ units).  
  ⛔ Should be eliminated unless clearing old stock.

- **Medium Discounts (10–20%)** offer the **best balance** between sales volume and profitability  
  ✅ Avg. margin: +17.48% – highest revenue overall.

- **Low Discounts (<10%)** maintain positive margins (15.58%)  
  ⚠️ But have limited impact on sales volume.

- **No Discount** yields the **highest profit margin** (34.02%) and strong revenue  
  💰 Many products perform well without promotions.

---

## 🧩 Category-Specific Recommendations

### 🛋️ Furniture
- Avoid high discounts (unsustainable).
- Use value-added offers: *free delivery, free assembly*.
- Customers are willing to pay full price for quality.

### 🗂️ Office Supplies
- Avoid high discounts (worst performance: -122.15% margin).
- Use **medium discounts** to boost volume.
- Alternative: bulk-buy incentives (e.g. *Buy 3 Get 1 Free*).

### 💻 Technology
- No/Medium Discounts perform similarly in revenue.
- High Discounts manageable only for old models.
- Better strategy: add value (*extended warranty, trade-in*).

---

## 🚀 Next Steps

- 🎯 Shift focus to **Medium Discounts** for customer acquisition.
- 🔁 Transition to **loyalty programs** to retain customers.
- 🧠 Analyze:
  - Which products sell well **without discounts**?
  - Who uses **high-discount vouchers**? Do they repurchase?
  - Are **high-voucher products** profitable?

- 🧬 Build **personalized campaigns**:
  - Smart discounts by segment
  - Value-added incentives
  - Long-term loyalty programs






