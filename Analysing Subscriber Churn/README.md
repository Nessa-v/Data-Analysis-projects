# PROJECT TITLE: DATABEL ANALYTICS (Analysing Subscriber Churn)
## AUTHOR: VANESSA NWANKWO
## TOOL USED: MICROSOFT EXCEL
## DATE CREATED: JUNE 26, 2025

## BACKGROUND

The goal of this analysis is primarily to analyse churn for a telecom, subscription-based businesses called Databel, to find out what customers are churning and why. Afterwards, recommendations were provided to reduce this churn. The dataset was provided by DataCamp. 

The analysis was taken a step further to include metrics such as:

- Retention and Churn Rate
- Customer Lifetime Value (CLTV)
- Monthly Recurring Rate (MRR)
- Average Revenue Per User/Customer (ARPU)
- Top Reason for Churn
- Average Account Length

#### Note: 

The dataset including the Interactive Dashboard can be found in the Dataset folder in this repository.

Dashboard Image can be found below.

The link to the video (of interactive dashboard) can be found here: 

-LINK-

---

## KEY INSIGHTS

-	Retention is strong at 73.14%, but nearly 27% of customers still churned, meaning almost 1 in 4 customers are leaving. This presents both a strength and a risk for long-term growth.

-	Churned customers had a higher ARPU (£36.80 vs £28.91), accounted for 31.85% MRR loss, and had a CLTV of £761.42, compared to £1,201.61 for retained customers, suggesting a significant loss of revenue from high-value users.

-	The average account length for churned customers is 18 months, versus 38 months for retained customers, reinforcing the concern that valuable customers are leaving before reaching full lifetime potential.

-	Most churn occurred among customers on month-to-month contracts, especially those who made 4+ customer service calls. This group alone contributed over 60% of all calls made by churned customers, highlighting a strong link between contract flexibility, high customer support demand, and customer attrition.

-	The age groups 42–49 and 58–65 had the highest churn. Among them, 59 women aged 42–49 cited better competitor offers, while 64 men aged 58–65 cited better competitor devices as their top reasons for leaving.

---

## RECOMMENDATIONS

-	Retain High-Value Customers:
  
Reducing churn by just 5% among high-CLTV customers could retain ~90 customers and protect over £68,000 in long-term revenue.

- Improve Customer Support Experience (Self-help manuals, faster escalation, using virtual assistants, etc):

If churn by customers with 4+ calls is reduced by at least 25%, approximately 145 customers could be retained, protecting over £110k in revenue.

-	Target Month-to-Month Contract Holders:

Offering bundled discounts, contracts with device upgrades, etc, for these customers, and converting just 10% of them could save the business £50,000 or more annually in MRR loss.

-	Use Insights from Top Churn Reason to Personalise Offers:

Re-engaging age-specific segments with tailored promotions such as device trade-ins and limited-time offers.

Preventing churn in roughly 25–30 customers could recover £20,000–25,000 in CLTV, while improving brand positioning.

-	Implement Predictive Churn Alerts:

Using behavioural flags (e.g. 3+ calls in a month on a month-to-month plan) to intervene early could reduce churn by 3–5%, protecting £41,000–£69,000.


---

## MORE DETAILED INSIGHTS:

1.	73.14% of customers were retained over the period analysed, indicating that while most customers remain loyal, nearly 27% still churned (nearly 27 out of every 100 customers are leaving the business), presenting both a strength and a risk.

2.	Competition is the leading cause of churn, accounting for 33.41% generally. Among customers in this category, over 37% left specifically because the competitor made a better offer. 

3.	The average Customer Lifetime Value (CLTV) for retained customers is $1,201.61, compared to only $761.42 for churned customers. This gap of nearly 37% highlights that customer churn represents not just a loss in volume, but also in long-term revenue potential.

4.	Despite churned customers representing only a portion of the base, they account for nearly one-third of lost monthly revenue (31.85%). 

5.	Approximately 32% of churned customers (581 out of 1,796) made 4 or more customer service calls. Customers in this group were responsible for over 60% of all service calls made by churned customers.
Additionally, they accounted for 43% of all service calls across the entire customer base (2,613 out of 6,123), highlighting a strong link between frequent support calls and customer attrition.

6.	The average account length for churned customers is only 18.07 months, compared to 37.58 months for retained customers. This suggests that the first 18–24 months are critical for retention efforts. 

7.	Churn is most concentrated in the age ranges (42–49 and 58-65), with reasons for leaving differing slightly between genders. Women between 42-49 are more likely to be swayed by better offers and men aged 58-65, more by better devices. 

8.	 Among customers who churned, 87.92% were on month-to-month contracts. This suggests a strong correlation between contract flexibility and churn risk. Month-to-month customers are more likely to leave compared to those on longer-term contracts.

9.	Churned customers pay 27% more on average than retained ones (£36.80 vs £28.91). This shows high spend ≠ loyalty. Higher-paying customers are the ones churning due to offers by competitors. Formula: ((36.80-28.91) / 28.91) * 100.

---

## SUMMARY OF ACTIVITIES CARRIED OUT

- Duplicate Detection: Used conditional formatting to highlight duplicate values (especially phone numbers), then filtered by colour to investigate uniqueness based on ID and location.

- Churn Classification: Created a binary churn column (0 = No, 1 = Yes) and labelled them as “Retained” or “Churned”.

- Churn & Customer Count Pivot: Built a pivot table to count total customers and sum churned customers.

- Churn Reason Breakdown: Cleaned churn reason columns and created a pivot table ranked in ascending order with percentages.

- Top Churn Reason Identification: Filtered the churn reason pivot to find that most churned due to competitors, and used slicers for better filtering.

- Customer Lifetime Value (CLTV): Calculated per-customer CLTV using total charges for churned and monthly charges × account length for retained; analysed averages by churn label.

- Average Tenure Analysis: Used pivot tables to compare average account lengths between churned and non-churned customers.

- Service calls Classification: Categorised service calls as 0-2, 3, 4+, then calculated percentage of calls per group.

- Monthly Recurring Revenue (MRR): Separated MRR by churn label using monthly charges and calculated churn rate as a percentage of total MRR.

- Retention Rate Calculation: Derived by subtracting churn rate (26.86%) from 100%.

- Account Length Binning: Grouped account length into 10-month intervals.
  
- Churn by Age and Gender: Binned ages into 8-year groups, plotted churn distribution by gender and age, and created gender-specific pivots for deeper comparison.

- ARPU Calculation: Computed average revenue per user based on the mean of monthly charges.

---

## DASHBOARD

<img width="1293" height="721" alt="Dashboard Image" src="https://github.com/user-attachments/assets/c263d2d6-a10d-4a5a-aa18-4f47fea9121b" />


