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

## KEY INSIGHTS

#### Note: The Interactive Dashboard can be found in the Dashboard folder in this repository.

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

## SUMMARY OF ACTIVITIES CARRIED OUT

- Duplicate Detection: Used conditional formatting to highlight duplicate values (especially phone numbers), then filtered by colour to investigate uniqueness based on ID and location.

- Churn Classification: Created a binary churn column (0 = No, 1 = Yes) and labelled them as “Retained” or “Churned”.

- Churn & Customer Count Pivot: Built a pivot table to count total customers and sum churned customers.

- Churn Reason Breakdown: Cleaned churn reason columns and created a pivot table ranked in ascending order with percentages, followed by a chart visual.

- Top Churn Reason Identification: Filtered the churn reason pivot to find that most churned due to competitors, and used slicers for better filtering.

- Customer Lifetime Value (CLTV): Calculated per-customer CLTV using total charges for churned and monthly charges × account length for retained; analysed averages by churn label.

- Average Tenure Analysis: Used pivot tables to compare average account lengths between churned and non-churned customers.

- Service calls Classification: Categorised service calls as 0-2, 3, 4+, then calculated percentage of calls per group.

- Monthly Recurring Revenue (MRR): Separated MRR by churn label using monthly charges and calculated churn rate as a percentage of total MRR.

- Retention Rate Calculation: Derived by subtracting churn rate (26.86%) from 100%.

- Account Length Binning: Grouped account length into 10-month intervals using a formula, then explained the logic for bin construction.

- Churn by Age and Gender: Binned ages into 8-year groups, plotted churn distribution by gender and age, and created gender-specific pivots for deeper comparison.

- ARPU Calculation: Computed average revenue per user based on the mean of monthly charges.
