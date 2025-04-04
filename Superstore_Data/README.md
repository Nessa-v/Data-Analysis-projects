PROJECT OWNER: VANESSA NWANKWO

DATE CREATED: MARCH 2025

PROJECT TITLE: SUPERSTORE SALES DATA ANALYSIS

PROJECT AIM:
Conduct end-to-end analysis of Superstore sales data to uncover trends and determine factors affecting sales and profitability.

TOOLS USED: PostgreSQL, Python

ABOUT THE DATASET
The dataset used is the ‘Projects Data’ obtained from DataCamp.
The tables used are ‘orders’, ‘returned_orders’, ‘people’, ‘products’. A sample of each table in excel format, can be found in the ‘dataset’ folder within the ‘Superstore’ project folder.

### `orders`:
| Column | Definition | Data type | Comments |
|--------|------------|-----------|----------|
| `row_id`| Unique Record ID | `INTEGER` |
| `order_id` | Identifier for each order in table | `TEXT` | Connects to `order_id` in `returned_orders` table |
| `order_date` | Date when order was placed | `TEXT` |
| `market` | Market order_id belongs to | `TEXT` |
| `region` | Region Customer belongs to | `TEXT` | Connects to `region` in `people` table |
| `product_id` | Identifier of Product bought | `TEXT` | Connects to `product_id` in `products` table |
| `sales` | Total Sales Amount for the Line Item | `DOUBLE PRECISION` |
| `quantity` | Total Quantity for the Line Item | `DOUBLE PRECISION` |
| `discount` | Discount applied for the Line Item | `DOUBLE PRECISION` |
| `profit` | Total Profit earned on the Line Item | `DOUBLE PRECISION` |

### `returned_orders`:
| Column | Definition | Data type |
|--------|------------|-----------|
| `returned`| Yes values for Order / Line Item Returned | `TEXT` |
| `order_id` | Identifier for each order in table | `TEXT` |
| `market` | Market order_id belongs to | `TEXT` |

### `people`:
| Column | Definition | Data type |
|--------|------------|-----------|
| `person`| Name of Salesperson credited with Order | `TEXT` |
| `region` | Region Salesperson in operating in | `TEXT` |

### `products`:
| Column | Definition | Data type |
|--------|------------|-----------|
| `product_id`| Unique Identifier for the Product | `TEXT` |
| `category` | Category Product belongs to | `TEXT` |
| `sub_category` | Sub Category Product belongs to | `TEXT` |
| `product_name` | Detailed Name of the Product | `TEXT` |





PROJECT OBJECTIVES
1.	Data Cleaning and Quality Checks:
Querying to identify and fix missing values.

2.	Identify Top 5 Products by Category and Sales.
Identifying Top Performing products in each category based on sales.

3.	Sales Analysis by Region:
Analyse customer purchase behaviour, order frequency, and other sales trends across different regions and markets.

4.	Time Series Analysis:
Create more detailed time series analysis, like monthly or quarterly trends in sales, profit, or order volumes.  Compute moving averages or growth rates.

5.	Returns Analysis:
Investigate the characteristics of returned orders (using the returned_orders table), such as which products have the highest return rates, and how returns impact profitability.

6.	Profitability Analysis:
Compare profit margins across product categories, sub-categories, and regions. Calculate metrics like profit percentage and rank the best and worst performing segments.

7.	Salesperson Performance Analysis:
Analyse salesperson performance by region and market to determine which salesperson performed best.

8.	Correlation Analysis:
Use SQL to analyse correlations between variables (e.g., discount and sales, quantity and profit) to derive actionable insights.

PROJECT NOTEBOOK INFORMATION
The notebook containing the code and the results can be found in ‘code/project_code_notebook.pdf’

ANALYSIS:
1.	Data Cleaning and Quality Checks 
Key Insights:
To estimate missing quantity values in the orders table using the relationship between sales and unit price. I calculated the average unit price per product based on similar records with: Same product_id,  discount,  market, and region.

Using the formula: quantity = sales / unit_price
Then rounded the result to the nearest whole number using SQL's ROUND() function.

Summary:
To handle missing quantity values in the Superstore dataset, I implemented a SQL-based imputation strategy using average unit prices calculated for each product under similar conditions. This allowed for accurate, context-aware estimation rather than generic fill methods, improving data reliability for analysis.

3.	Top performing products, based on sales and category

Key Insights

a.	High Sales Doesn’t Always Mean High Profit, as the top-selling product ‘Apple Smart Phone’ brought in the highest revenue but the lowest profit of the top 5 products. In contrast, the Canon imageCLASS 2200 Advanced Copier (ranked 5th by sales) yielded the highest profit with over $25,000.

b.	Profitability Varies Greatly Between Products: Products with similar sales (like Cisco and Motorola phones) had very similar profits, suggesting standardized margins. But there is a huge leap in profit from the Canon copier compared to smartphones indicating a premium margin product.

c.	Phones Dominate the Sales Chart:  4 of the top 5 highly sold products are smartphones, showing strong demand of smartphones in the tech category.

d.	Worst Performing Category: The worst performing category generally was office supplies, with 3 of 5 Office Supplies generating the least amount of profit, and all 5 generating lowest sales. ‘The Hoover stove, White’ categorised as ‘office supplies’ produced a loss of $-2180.63.

![Top 5 Products_Each Category_Sales vs  Profit](https://github.com/user-attachments/assets/62a216ba-b8a2-4f33-9f9f-f27bdddda312)


Summary: 

Using SQL window functions, I identified the top 5 products by total sales for each category. While smartphones dominated in terms of revenue, the most profitable item was a copier, highlighting a key insight: high sales volume does not always align with high profitability. This emphasizes the importance of considering profit margins, not just sales when making inventory and marketing decisions.

3.	Sales Analysis by Region:
Key Insights by year

2014:

a.	Central (EU) was the top-performing region, with the highest sales value (over 600,000) and order count, while Oceania (APAC) came in second (over $350,000) in value of sales.

b.	Central Asia (APAC) had the highest average sales per order, suggesting fewer but higher-value transactions, suggesting potential for high-value customers.

c.	Canada had the lowest performance, with total sales under $25,000, significantly trailing other regions.

2013:

a.	Central (EU) and Oceania (APAC) led in both order volume and sales value.

b.	Canada again had the lowest number of orders and sales, with total sales below $20,000.

2011–2012:

a. Central (EU) maintained consistent dominance in these years, with sales values over $200,000 each year.

b. Canada consistently ranked as the lowest-performing region, showing limited engagement with customers or smaller customer base.


![Customer Order Analysis_Total Sales by Year](https://github.com/user-attachments/assets/7c533576-2529-4cd4-9a9b-9fef1e30e855)


Summary:

I analysed customer purchase behaviour and sales trends across global markets by grouping data by region, market, and year. Central (EU) consistently led in total sales and order volume across all years in the dataset, while Canada showed persistently low sales performance, indicating significant regional differences in purchasing behaviour. 

The reason for low performance could be the type of products sold and/or the demographics of customers living in that region. Therefore, tailored marketing strategies could be helpful in Canada (Canada). However, further investigation on this should be carried out.
In 2014, Central Asia (APAC) had the highest average order value, revealing potential for high-value customer targeting.

4.	Time Series Analysis
   
Key Insights

This analysis focuses on comparing January and December in terms of total sales and profit over four consecutive years. The goal is to uncover end-of-year performance trends and post-holiday effects.

January 2011:
Sales: $98,899 | Profit: $8,322 | Orders: 216

December 2011:
Sales: $333,926 | Profit: $40,648 | Orders: 620

Analysis: December sales and profit more than tripled those of January, showing strong holiday season demand. High profitability suggests not just more sales, but likely higher margin products.

January 2012:
Sales: $135,781 | Profit: $10,402 | Orders: 260

December 2012:
Sales: $338,257 | Profit: $32,951 | Orders: 628

Analysis: December’s revenue and profit nearly tripled that of January. High order volume and consistent margin performance reinforce seasonal patterns.

January 2013:
Sales: $199,186 | Profit: $26,811 | Orders: 345

December 2013:
Sales: $405,454 | Profit: $50,203 | Orders: 825

Analysis: Although January 2013 sales were higher than previous years, December still outpaced it by over 60% in sales, maintaining the seasonal performance gap.

Analysing the evolution of total sales, profit, and order volume over the course of 2014 (the most recent year). Identifying trends, seasonal peaks, and business performance patterns.

Q1: A slow start

January
Sales: $241,269 | Profit: $28,001 | Orders: 450

February
Sales: $184,837 | Profit: $19,752 | Orders: 385

March
Sales: $263,101 | Profit: $37,357 | Orders: 530

Analysis:

The year began with low sales and profit, which is typical after the December holiday surge. February was the lowest-performing month in sales, profit, and orders. March made a strong recovery, with profit increasing nearly +89% from February possibly due to promotional pushes or improved market activity.

Q2: Stabilization and Growth

April
Sales: $242,772 | Profit: $23,782 | Orders: 523

May
Sales: $288,401 | Profit: $33,954 | Orders: 667

June
Sales: $401,814 | Profit: $ 43,779 | Orders: 889

Analysis:
Steady growth each month with rising sales and profit. June stood out as the first major spike, crossing the $400K mark in sales and nearly $44K in profit. Customer engagement increased, as seen in rising order volume.

Q3: Sustained High Performance

July
Sales: $258,706 | Profit: $28,036 | Orders: 540
.
.
.

Analysis:

July had a slight dip in sales compared to June, but profit remained solid. August and September showed a significant increase compared to July. August saw a +76% jump in sales from July and a 91% increase in profit, suggesting strong demand or a successful mid-year marketing campaign. September continued this upward trend, with the highest monthly profit of the entire year.

Q4: Seasonal Peak
.
.
.
November
Sales: $ 555,279 | Profit: $ 62,857 | Orders: 1077

December
Sales: $ 503,144 | Profit: $46,917 | Orders: 1093

Analysis:

November had the highest monthly sales of the entire year, driven by holiday shopping (e.g., Black Friday, early holiday deals). December maintained high volume and revenue but saw a slight drop in profit, possibly due to year-end discounting and/or clearance pricing. These months confirmed strong seasonal demand spikes.

![Quarter_over_Quarter Sales Comparison](https://github.com/user-attachments/assets/d7bc8565-4c97-4426-80cd-175b6162b353)


Summary:

January follows a predictable post-holiday dip in both sales and profitability, while December is a consistent high-performing month across all years. December 2014 saw an increase in sales by almost $100,000 compared to December 2013, but the total profit generated was lower than that of 2013.
Also, analysing the month-over-month performance of 2014 revealed a typical post-holiday decline in Q1, Q2 showed recovery, and Q3 delivered a major growth surge, especially in August and September. These two months alone contributed over $937,000 in sales and $121,000 in profit, making them key contributors to the year’s success. Q4 followed with peak seasonal demand in November and December.
These trends highlight the importance of seasonal marketing, inventory stocking, and resource planning to capitalise on peak periods and manage low demand months.

5.	Returns Analysis
   
Key Metrics Reviewed

Total Orders: Number of times a product was sold.

Returned Orders: Number of times the product was returned.

Return Rate (%): Percentage of total orders that were returned.

Returned Sales: Value lost from returned orders.

Returned Profit: Estimated profit lost due to returns. A negative returned profit means that the company lost money on the returned items, more than it made from the sale.

Key Insights

Product Name	Orders	Returns	Return Rate	Returned Profit

Ames Clasp Envelope, Security-Tint	3	3	100%	–$16.25 (Loss)

Samsung Headset, Full Size	2	2	100%	$53.46

Avery 500	2	2	100%	$27.49

Acme Shears, High Speed	2	2	100%	$25.74

Stockwell Rubber Bands, Assorted Sizes	2	2	100%	$15.84

Interpretation:

a.	Complete return of products = zero success rate.

b.	Every order of these products was returned which is a major red flag for product satisfaction, delivery issues, etc.

c.	One product, Ames Clasp Envelope, caused a net loss of $16.25, meaning it cost the business more to sell and return it than it earned.

d.	Products with low volume orders and high-return items produce risks.

e.	A product called ‘Bevis Computer Table, Fully Assembled’ in furniture category, also produced a 100% return rate, since it was ordered once and returned. This return caused a full financial loss, with –$1,315.55 in lost profit. This is especially concerning because it is bulky, and likely costly to ship.

Conclusion: The product is a clear candidate for removal from the catalogue or for further investigation, either due to quality, damage during delivery, or unmet expectations.

f.	Another product called the ‘GBC DocuBind P400 Electric Binding System’, although with a relatively low return rate (16.67%), resulted in a substantial financial loss. The returned profit was negative (-$3,701.89), meaning the company lost a significant amount on just one return. Interestingly, the overall product is operating at a loss even before considering the return (total profit: –$1,878.17).

Conclusion: The product may be unprofitable in general and especially costly when returned. It likely has a high-cost base and/or expensive return logistics.

Summary:

I analyzed Superstore’s return behaviour by joining orders with returned_orders and calculating return rates and returned profit per product. Several products had a 100% return rate, indicating serious product or fulfillment issues. I also found that some products, like the ‘GBC Electric Binding System,’ although returned infrequently, resulted in massive losses when returned (–$3,700+). Others, like the ‘Bevis Computer Table,’ were returned 100% of the time, making them high-risk inventory items. These insights will help to inform product management and return policy strategies.

6.	Profitability Analysis
   
Key Insights

a.	The category with the highest profit margin is Technology, with Copiers leading with a 17% margin, implying high-value, low-return, or premium-priced items.

b.	High sales do not always mean high margin, because while Phones had the highest sales ($1.7M), they ranked 3rd in margin for Technology.

c.	The category ‘Furniture’ with the sub-category ‘Tables’ produced significantly lower profit margins, with profit even less than $-60,000. This is likely because there were high number of returns and low orders, especially for products in the sub-category ‘Tables’. For example, Figure 4 shows that more than 10 tables in the furniture category were 100% returned. This mean that the number of orders/sales = number of returns.


![Top 20 Table Products by Return Rate Percentage](https://github.com/user-attachments/assets/f7e7d62c-358e-4e3e-8923-60df73fc0048)


Summary

Using SQL window functions, I observed that the top category by total sales is the Technology category. While smartphones dominated in terms of revenue, the most profitable item was a copier (sub-category), reiterating a key insight: high sales volume does not always align with high profitability. This analysis emphasized the importance of considering profit margins, not just sales when making inventory and marketing decisions. The analysis also discovered the low demand for Tables with high number of returns, signifying unmet expectations of the products. Other reasons for this loss could be due to manufacturing costs or logistics involved when returned.

A solution could be completely taking off those items from the inventory or tailored marketing campaigns to attract more customers.

7.	Salesperson Performance Analysis
   
Key Insights

a.	Anna Andreadi leads by a large margin, responsible for nearly $2.83 million in total sales across three regions Central (EU, LATAM, US). This indicates exceptional performance, likely driven by a high demand region or market segment.

b.	Chuck Magee is in second place, showing strong contributions over $1.6M in sales, in regions South (EU, LATAM, US).

c.	Jack Lebron follows at a distant third in regions North (EU, LATAM) but still shows strong contributions above $1.2M in sales. 

d.	Sales figures gradually decrease across the rest of the team, with the lowest performer, Nicole Hansen in the region Canada (Canada), bringing in just over $66K in sales, suggesting possible underperformance or limited regional demand.

e.	Sales leadership is concentrated among a few top performing individuals, which may reflect disparities in regional sales opportunities, product offerings, or sales strategies. It is also worth noting that the top three salespersons operate in more than one region unlike the others, which could be a significant factor contributing to their sales and profits. (You should hand it to them, they’re working hard as expected).


![Total Sales by Salesperson](https://github.com/user-attachments/assets/7f626fe4-f1f8-4c58-9acb-ec213863355c)


![Total Sales by Salesperson_Grouped by Region and Market](https://github.com/user-attachments/assets/8a57f603-2001-41ee-8176-11354559dc91)


Summary

I conducted a geographic salesperson analysis by joining order and salesperson data, calculating total sales, profit, and profit margins per person. Bar chart visualisations reveal that Anna Andreadi was the highest performer ($2.8M), while others trailed significantly. This helps pinpoint the highest-performing salesperson in the highest performing region and market (Central EU).

8.	Correlation Analysis
   
Key Insights

a.	Discount vs Profit (-0.32): A moderate negative correlation. As discounts increase, profit tends to decrease, which is expected. This suggests that discounting strategies may be hurting profit margins.

b.	Sales vs Profit (0.48): A strong positive correlation. Higher sales generally lead to higher profits, showing consistent pricing or volume benefit.

c.	Quantity vs Sales (0.31): A moderate positive correlation. More items in an order typically lead to higher sales value.

d.	Quantity vs Profit (0.10): A weak positive correlation. Quantity of items in an order has a mild impact on profit, possibly due to mixed margins across products.

e.	Discount vs Sales (-0.09): A very weak negative correlation. Discounts are not significantly boosting sales volume.

Correlation Matrix:

Correlation Matrix:

            discount     sales  quantity    profit
          
discount:   1.000000 -0.086718 -0.019886 -0.316477

sales:      -0.086718  1.000000  0.313584  0.484914

quantity:   -0.019886  0.313584  1.000000  0.104379

profit:     -0.316477  0.484914  0.104379  1.000000



Summary:

I explored the relationship between sales metrics using a correlation matrix. The results show a strong positive correlation between sales and profit (0.48), and a negative correlation between discount and profit (-0.32), suggesting that excessive discounting may hurt profitability. Also, since there is a positive correlation between quantity of items sold with sales and profit, albeit not so great, tailored marketing campaigns might increase sales and profits for non-popular items. 

The data also shows that discounts do not increase sales significantly. This could be because high sales items may not need discounts to perform well, or customers may not be strongly motivated by small discounts.
