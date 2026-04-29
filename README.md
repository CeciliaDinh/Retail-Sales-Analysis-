🧠 Retail Profit Optimization Project
Author: Dinh Thi Thanh Hang
This project aims to analyze 4 years of transactional data from a retail store, identify profitability issues, and generate actionable strategies to maximize profit.
🔍 Business Context
This online retail store sells 3 product categories: Furniture, Office Supplies, Technology for 3 customer segment: Consumer (B2B customer), and B2B customer groups such as Corporate and Home Office.
B2C customer has been purchasing over a long period of time (Average Customer Tenure/ Active Time= 1434 days), but B2B (Average Customer Tenure is around 1000 days) is relatively new compared to B2C
Despite having a decent revenue stream, the store suffers from low profit margins (currently ~12%). Initial analysis shows:
Discounts increase quantity purchased (positive Pearson correlation),
But they correlate negatively with both revenue and profit,
Many loss-making orders are concentrated around:
Discounts > 20%,
Bulk purchases (above 75th percentile in quantity).
🎯 Project Objectives
Optimize Revenue
Identify high-performing and high-margin products
Prioritize scalable products not reliant on discounting
Optimize Marketing Spend (Voucher ROI)
Evaluate cost-effectiveness of discounts
Detect high-discount orders that lead to losses
Propose refined voucher strategy based on ROI
Segment Customers Based on Behavior
Go beyond the default segments (Consumer, Corporate, Home Office)
Use clustering & PCA to identify behavior-driven customer personas
Design sales/loyalty programs tailored to each segment
Why K-means Clustering & PCA? -> Some B2B-like consumer customer -> RFM may be bias-> K-means learn customer behaviors & RFM metrics
Dashboard Overview
Summary Of Insights
Customer Demographics
1. Consumer Segment: Core revenue driven with 4x higher revenue than the other 2 segments, follows a seasonal pattern with peaks in March, May, September, and October. Reached 20K in March 2017, Sep-Oct 2017, May 2016, Sep-Oct 2016, Sep-Oct 2015, Sept 2014
Top Products:
Canon imageCLASS 2200 Copier: 33K sales
HP DesignJet T520 Printer
HON 5400 Series Chairs
GBC Binding Machines
Insight: Consumers prioritize multifunctional office equipment and ergonomic furniture.
Recommendations:
Offer bundle deals (e.g., Printer + Chair).
Launch seasonal campaigns: Back to School, Work-from-Home Setup.
Consider subscription models for consumables.
Consumer Segment Breakdown By Product Category
Office Supplies Sales jumped from <$5K/month (2014–2015) to $19.9K in Jan 2017 – 10x YoY growth. Now contributes 30%+ of consumer revenue during peak months.
Launch Sep–Jan bundles (e.g., Notebooks + Organizers).
Target repeat small-ticket buyers and SME bulk orders.
Furniture Revenue spikes in Sep, Oct, Dec (e.g., $22.17K on Dec 1, 2016 vs. $3.6K in Jan).Strong seasonal pattern tied to workspace refresh & holiday sales.
Push high-margin Q4 bundles (Desk + Chair).
Align promos with major sales events.
Avoid discounting low-margin SKUs.
Technology  High-value surges in May & Sep (e.g., $20.7K in May 2016, $23K Oct 2014).Driven by academic cycles and onboarding waves.
Retarget students & hybrid workers in Apr/Aug.
Bundle high-margin tech (Laptop + Monitor + Mouse).
Offer add-ons (e.g., free setup) vs. deep discounts.
2. Corporate Segment: Scalable segments with consistent growth over time. Notably, October 2017 witnessed an all-time high purchase (23K)- surpassing key segment- Consumer. However, spedning dropped sharply afterwward, which ma signal one-off purchase
Top Products:
3D Systems Cube Printer
Fellowes Binding Machines
Cubify CubeX 3D Printer
Insight: Corporate buyers invest in specialized, high-functionality tools for R&D and presentations.
Recommendations:
Create B2B bulk packages.
Use value-based pricing.
Implement Account-Based Marketing (ABM) targeting design firms, universities, research labs.
Corporate segment breakdown by product categories
Technology Top performer in recent years; strong batch buying pattern.
Revenue grew steadily: $1.7K (Jan 2015) → $4.3K (Jan 2017).
Peak: $23.7K on Nov 1, 2017 → 3× YoY.
Actions: Analyze Nov 2017 spike – promo, product launch, or seasonal trend? Target Mar, Sep, Nov with bundle deals (e.g., Laptop + Accessories).
Office Supplies Strong YoY growth; reliable 2nd-best category. $1.0K (Jan 2015) → $5.8K (Jan 2017), doubling YoY.
Outlier: Aug 2017 hit $14K, despite zero Aug sales in prior years.
Action:
Investigate August anomaly – repeat if demand was cyclical.
Launch Sep–Jan back-to-work bundles.
Furniture: Lower volume but clear Q4 growth trend. $644 (Jan 2015) → $1.9K (Jan 2017). Dec 2017 peaked at $12.9K – 2× YoY, despite Oct decline.
Action: Focus on Q4 with workspace upgrade bundles. Pair with consulting services (layout, ergonomics) to upsell.
3. Home Office Segment:  Moderate buyer with a One-time spike as there was a sudden spike in March 2014 (-20K), the largest transaction ever for this segment. Action: Revisit internal campagins or external events from March 2014.
Top Product: Cisco TelePresence EX90: 22K sales
Insight: Home office users prioritize high-end conferencing gear for professional communication.
Recommendations:
Position Cisco EX90 as a flagship for remote work.
Offer Premium Home Office Kits (e.g., chair + video gear).
Upsell related products: noise-canceling headsets, sit-stand desks.
Home Office Segment Breakdown By Product Categories
TechnologyRapid growth observed from 2016–2017. Jan 2016 → Sep 2017: $946 → $5.9K → 6× YoY growth. Peak at $19.9K in Sep 2017 (2.5× vs. Sep 2016).
Historic outlier: $26K in Mar 2014 — unmatched since.
Action: - Deep-dive into Mar 2014 & Sep 2017 spikes to identify triggers (e.g., promos, B2B deals). Replicate timing and offer structure.
Office Supplies - Spiked in Sep 2016 ($9.2K) but dropped to $5.1K in Sep 2017 and declined further by year-end.
Action:
Investigate demand drop — was it saturation, product gaps, or marketing lapse?
Leverage high-margin potential with targeted Q3–Q4 campaigns.
Furniture Steady YoY growth, peaking at $12.13K in Nov 2017 — 3× YoY increase.
Action: Position Furniture as a Q4 growth lever. Cross-sell with Office Supplies to lift both categories — especially for SME workspace upgrades.
4. Cross-Segment Insights: Usability & Multi-Functionality Drive Sales
Key Insight: Usability and multi-functionality are top drivers of sales across segments.
Niche Tools like 3D printers and conferencing gear perform well in targeted groups, delivering high ROI per user.
Recommendations:
Bundle complementary products (e.g., ergonomic chair + printer).
Focus on seasonal marketing during peak months (e.g., back-to-school, Black Friday).
Explore loyalty programs for repeat customers.
Product Insights:
Top-performing (20% of products that contributes to profit & sales ). Need to scale, and highly focus
Products with high-margin. Try to increase revenue by bundle it with good sales & low-profit margin ones
📉 Discount Campaigns Insights
🔍 Overall Findings
High Discounts (>20%) lead to significant profit loss (avg. -78.45%) and unsustainable break-even volumes (4,458+ units).
⛔ Should be eliminated unless clearing old stock.
Medium Discounts (10–20%) offer the best balance between sales volume and profitability
✅ Avg. margin: +17.48% – highest revenue overall.
Low Discounts (<10%) maintain positive margins (15.58%)
⚠️ But have limited impact on sales volume.
No Discount yields the highest profit margin (34.02%) and strong revenue
💰 Many products perform well without promotions.
🧩 Category-Specific Recommendations
🛋️ Furniture
Avoid high discounts because Furniture already has lowest profit margin
Main customer usually B2B customer, so instead of price, we have to priotize on building relationships such as gifts on special occasion, and after-buy/ after-care service
We can create bundle campaigns to sell Furniture & Office Supplies for Home Offices segment or Corporate as high demand for these two categories in recent year, and
Office Supplies has higher profit margin
🗂️ Office Supplies
Avoid high discounts because although Office Supplies have highest profit margin (29.5%), many high loss orders come from this category often with discount voucher up to 80% of bulk orders from a segment of consumer exihibit B2B-like purchasing habits and may use the tricks to pass our B2B discount campaign
💻 Technology
Can give 5%-10% discount to activate long-time/ churn customer to get them buy again
Create campagins such as buy mouse+ monitor+ screen then free installation+ after-care  service
🚀 Next Steps
🎯 Shift focus to Medium Discounts for customer acquisition.
🔁 Transition to loyalty programs to retain customers.
🧠 Analyze:
Which products sell well without discounts?
Who uses high-discount vouchers? Do they repurchase?
Are high-voucher products profitable?
🧬 Build personalized campaigns:
Smart discounts by segment
Value-added incentives
Long-term loyalty programs
📊 Product Analysis Insights
🔹 Category-Level Performance
Office Supplies: Highest profit margin (29.5%). Ideal for bundling and B2B campaigns.
Technology: Highest revenue generator with strong margin (~28.9%). Focused marketing recommended; avoid deep discounts to protect profitability.
Furniture: Popular but lowest profit margin (21.3%). Recommend value-added perks (free delivery, installation) instead of discounts.
🔹 Strategic Opportunities
Cross-sell high-margin products (Office Supplies, Technology) with popular but low-margin items (Furniture).
Segment customers by behavior and product interest to tailor retention & upsell strategies.
Reevaluate Furniture pricing and supply chain costs to optimize margins without relying on discounts.
🔹 High-Margin, High-Impact Products
Flagship products contributing significantly to both revenue and profitability:
Product	Revenue	Profit Margin
Canon imageCLASS 2200	$123K	~38%
Fellowes PB500 Electric Punch	$50K	~44%
HP LaserJet 3310	$37K	~33%
GBC / Ibico / Ativa Binding Tools	Varies	32–49%
💡 These products are ideal for B2B targeting, bundling strategies, and campaign prioritization.
✅ Recommended Actions
Focus marketing campaigns on top 3 high-margin, high-sales products.
Design smart bundles to increase AOV using accessories like binders & shredders.
Launch B2B acquisition strategy targeting enterprises with bulk office equipment needs.
📊 Segment Overview
Cluster 0 – Premium Deal Hunters
Buy only with heavy discounts (~80%). High order value but negative profit. Mostly new customers. Purchase: Appliances, Machines, Binders.
Recommendations:
Only give extreme discount with limited order size (flash sale for only one item/per account)
Build loyal program such as loyalty points (redeem cost) after a sucessful orders
Cluster 1 – Loyal Office Veterans
Long-time customers from the East region. Buy Office Supplies with or without discounts. High monetary, low recent activity.
Recommendations:
Run a “We Miss You” reactivation campaign.
Offer loyalty tier perks (e.g., free shipping or early access to new products)
Suggest subscription plans for office supplies
Cluster 2 – South Savvy Shoppers
Buy Furniture & Office Supplies from the South. Accept low or no discounts. High profit, better recency.
-Recommendations:
Send product recommendations based on previous furniture & office supply purchases
Introduce referral bonuses to expand customer base in the South
Cluster 3 – West Furniture Fans
Furniture buyers from the West. Accept mid-range or no discounts. Good frequency and profit.
Recommendations:
Launch seasonal campaigns (e.g., “Spring Workspace Refresh”)
Offer free installation or delivery for frequent buyers
Cluster 4 – Stable West Office Buyers
Office Supplies buyers from the West. Prefer <20% discounts or none. Few unprofitable orders, moderate profit.
Recommendations:
Promote business accounts with bulk order discounts or dashboards
Add reorder reminders based on past cycles
Cluster 5 – Premium Central Buyers
Strong RFM across the board. Buy Office Supplies from Central. High profit, low loss rate, discount-insensitive.
-Recommendations:
Offer VIP loyalty tiers with concierge support, special previews, and quarterly gifts.
Create a customer spotlight program to retain loyalty and collect testimonials.
Cluster 6 – Tech Bargain Spikers
Only buy Technology with deep discounts (~70%). Low R and F, some extreme loss orders.
-Recommendations:
Tighten discount limits on tech products.
Introduce tech accessory bundles (e.g., mouse, cables) with better margins.
Cluster 7 – Frequent Losers
High R and F but low M. Many loss-making orders. Buy Furniture in Central & East with up to 60% discount.
-Recommendations:
Only give extreme discount with limited order size (flash sale for only one item/per account)
Cluster 8 – Golden Newcomers
New customers with high recency. No discounts used. Buy Office Supplies + Technology. -> Engage their engagement with the brand with loyalty points
Recommendations:
New customers "Welcome Kit"
