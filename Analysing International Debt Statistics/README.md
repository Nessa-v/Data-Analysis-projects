## PROJECT AUTHOR: VANESSA NWANKWO
## DATE CREATED: JUNE 2025
## PROJECT TITLE: ANALYSING INTERNATIONAL DEBT STATISTICS
## LANGUAGE / TOOLS USED: POSTGRESQL AND PYTHON

### About the Data: The dataset used is international debt data collected by The World Bank, and provided by DataCamp.

## SUMMARY OF WORK DONE

- Analyzed external debt data for 124 countries using advanced SQL (CTEs, JOINs, CASE, UNION ALL) techniques.

- Focused on long-term debt indicators: disbursements, principal repayments, and interest payments.

- Identified the top 20 countries with highest and lowest disbursements and repayments.

- Calculated repayment rates and interest-to-principal ratios for 25+ countries, exposing red flags and debt servicing risks.

- Highlighted vulnerable groups like Least Developed Countries (LDCs) and IDA-only borrowers.

- Investigated country-specific cases like Russia’s 200,000% repayment rate, China’s 612%, and Somalia’s 1340%.

- Produced visual dashboards using Python to simplify complex trends (e.g., interest burdens among top repayment countries).

- Drafted policy-driven recommendations to guide debt sustainability, concessional lending, and financial relief efforts.

---

# DETAILED PROJECT

## 🔹 Introduction

This analysis explores debt data for 124 countries using SQL to answer key questions on disbursements, repayments, interest payments, and their sources. The primary indicators studied:

- **DT.DIS.DLXF.CD**: New loan disbursements (how much was borrowed)
- **DT.AMT.DLXF.CD**: Principal repayments (how much of the loan was repaid)
- **DT.INT.DLXF.CD**: Interest payments (how much was paid in interest)

The goal: assess **debt servicing pressure**, identify red flags, and recommend actions for debt sustainability.

Note: Debt servicing pressure is the burden on a country’s economy caused by the need to make regular payments on its debt, even when it might not have enough income or reserves to do so easily.

## 🧪 Methods Used
- SQL: `CTE`, `JOIN`, `CASE`, `UNION ALL`
- Python: `matplotlib`, `pandas` for data visualization

---

## 🔹 Key Insights

### 🏆 Top 5 Countries with Highest Disbursements

![top_disbursements](https://github.com/user-attachments/assets/0bb47fd0-be57-4ac9-9a1f-dd9b5627701b)


| Country Group                         | Amount Received | Amount Repaid | Repayment Rate | Red Flag |
|--------------------------------------|------------------|----------------|----------------|----------|
| Least Developed Countries (UN)       | $40.2B           | $25.2B         | 63%            | Medium   |
| IDA-Only                              | $34.5B           | $20.5B         | 59%            | Medium   |
| South Asia                            | $29.3B           | $48.8B         | 167%           | High     |
| Cameroon                              | $18.2B           | $10.5B         | 58%            | Low-Med  |
| China                                 | $15.7B           | $96.2B         | 612%           | High     |

**Insights**:
- South Asia and China (repaying more than 6 times what it received) are repaying far more than recent borrowing, likely servicing **old or high-cost debt**. This means money is going out faster than it comes in. This could slow development and add pressure to national budgets.
  
- Cameroon has a balanced profile. They are paying steadily but still carrying over 40% unpaid. It's not a big concern now, but debt levels must be monitored over time to maintain fiscal discipline.
  
- LDCs and IDA only have **large outstanding debts** which shows potential repayment strain.

---

### 🔻 Bottom 5 Countries with Lowest Disbursements

![Lowest_disbursements](https://github.com/user-attachments/assets/1549b30e-015f-45b1-844f-dcd923c0b263)


| Country           | Amount Received | Amount Repaid | Repayment Rate | Red Flag |
|-------------------|------------------|----------------|----------------|----------|
| Turkmenistan       | $0               | $29.1M          | -              | High     |
| Somalia            | $2.46M           | $32.9M          | 1340%          | High     |
| Tonga              | $5.53M           | $10.4M          | 188%           | High     |
| Eritrea            | $7.2M            | $31.1M          | 432%           | High     |
| Solomon Islands    | $8.6M            | $30.7M          | 355%           | High     |

**Insights**:
- These countries are **repaying far more than they borrow**, highlighting debt distress.
- Countries may be avoiding excessive borrowing to prevent being trapped in more debt, for example Turkmenistan with zero disbursement
- The low disbursement and high repayment figures could be linked to factors such as restricted credit access, low borrowing due to debt distress, high interest rates due to inflation, or a preference for grants over loans by international lenders, to prevent worsening debt distress.

---

### 🔻Lowest Principal Repayments

![Lowest_Principal_Repayments](https://github.com/user-attachments/assets/148e441e-c846-4ece-865b-bf2ae36d22ae)

![20_Lowest_Principal_Repayments](https://github.com/user-attachments/assets/a940d83e-63bd-4bef-a5d0-025d232e0153)

Analysis revealed that all 5 of these countries are repaying significantly less that what they received. It could be due to longer grace periods or difficulty repaying loans.
For more accurate analysis, the data was expanded to 20 countries with lowest repayments, which now included all 5 countries with the lowest disbursements.
It is also worth noting that all these countries are all developing countries, characterised by low income, political instability or limited access to capital markets.

**Insights**:
- Most are **developing or small island nations**, with fragile economies and limited capital access due to their high default risk.
- Somalia, Eritrea, and Solomon Islands with low disbursements and relatively high repayments might be focused on repaying old loans.

---

### 💸 Interest-to-Principal Ratios (Top Repayment Countries)


![20_Highest_Interest_Payments](https://github.com/user-attachments/assets/417bf53f-4593-4eb6-9603-1aea5908587a)

![20_Highest_Principal_Repayments](https://github.com/user-attachments/assets/54aec314-c7d4-4ab8-9e16-d60cef7a5904)

![Interest Payments Among Top 20 Repayment Countries](https://github.com/user-attachments/assets/f1a3a4ad-80f2-4286-834c-bc67c869b859)


| Country            | Interest-to-Principal Ratio (%) |
|:-------------------|:-------------------------------:|
| Mexico             | 76.53%                          |
| China              | 18.60%                          |
| Brazil             | 18.88%                          |
| South Asia         | 32.61%                          |
| Russian Federation | 20.87%                          |
| Turkey             | 23.47%                          |


**Insights**: 
- High Repayment = High Interest Burden: Countries like Mexico ($19.3B), China ($17.9B), and Brazil ($17.0B) lead in interest payments, suggesting they are under debt servicing pressure.
  
- Least Developed Countries (UN classification) have high interest payments. Despite their lower income status, they’re still spending billions annually just on interest, which can divert funds from development goals like healthcare or infrastructure.
  
- Mexico, South Asia and Turkey pay **significantly more interest relative to principal**, indicating higher borrowing costs and/or older debt.

- The Russian Federation with Total disbursements: ~$33M, Total repayments: ~$66.6 billion, and Repayment rate: ~201,553%, appears with approximately $13.9B in interest payments (20.87% interest to principal ratio). This confirms earlier observations: Russia is servicing a significant historical debt burden, likely accumulated over previous years and associated with high repayment costs.

---

### 🔍 Disbursement Source Breakdown

![Debt_Breakdown_China](https://github.com/user-attachments/assets/279f2be6-e7f6-4e57-86a5-62d8597b919c)
![Debt_Breakdown_Eritrea](https://github.com/user-attachments/assets/e28e6cb9-7345-4942-9b2d-d8276fc6ab94)
![Debt_Breakdown_IDA](https://github.com/user-attachments/assets/6c76e0a4-1ee0-4151-821b-5f2a981ab4b0)
![Debt_Breakdown_LeastDevelopedCountries](https://github.com/user-attachments/assets/47f74618-dd8e-460e-a5b9-1cf406d9ac39)
![Debt_Breakdown_SolomonIslands](https://github.com/user-attachments/assets/321004db-0366-4bf1-b1a5-a7dd65a54568)
![Debt_Breakdown_Somalia](https://github.com/user-attachments/assets/4219f8e0-f3cb-480d-baa2-5626f2034c4d)
![Debt_Breakdown_SouthAsia](https://github.com/user-attachments/assets/9be4dc2e-0d27-4dce-9ad5-39b0f8d3c479)
![Debt_Breakdown_Tonga](https://github.com/user-attachments/assets/e9184e7f-a669-4a7c-9fdb-ad9e55445b1b)
![Debt_Breakdown_Cameroon](https://github.com/user-attachments/assets/b0596179-a5c7-461c-a547-1d6e42c2d04c)


- **High disbursement countries** (e.g., China, IDA-only): Borrow from a **diverse mix** including commercial, private, and official creditors. This shows deep access to global capital markets, but also indicates greater exposure to high-cost loans (especially commercial and private).

- **Low disbursement countries** (e.g., Eritrea, Somalia, Solomon Islands, Tonga) etc receive 50% of disbursements from official creditors, which indicates low access to private or commercial lending, possibly due to default risk, small market size, or political instability.

- Countries like **Somalia, Tonga, and Solomon Islands** rely entirely on just two creditor types, making them vulnerable to policy shifts from those institutions.
  
---

## ✅ Conclusion & Recommendations

High borrowing is not always a problem, but it must lead to long-term progress. Countries should avoid short-term gains at the cost of long-term distress.

### 📌 Recommendations:

1. **Prioritize Grants Over Loans** – for fragile economies, to avoid future debt distress.
   
2. **Restructure or Improve Credit** – for countries with high repayments and low new loans.
   
3. **Track Disbursement vs Repayment Trends** – for informed borrowing, to determine if new borrowing aligns with their ability to pay.
 
4. **Ensure Lending Transparency** – ensuring clear terms and conditions for all loans to prevent hidden debt risks, especially for isolated or resource-limited countries.
   
5. **Use Loans for High-Return Projects** – developing countries should ensure loans are going into high-return sectors like infrastructure, health, or education.
   
6. **Encourage Debt Relief Programs** – international debt relief programs and concessional loan terms will be favourable for high-debt, low-income nations, to ease pressure and make borrowing more affordable.

---

## ⚠️ Data Limitations

- Some entries are **regions or institutions**, not countries (e.g., South Asia, IDA).
- Certain countries show **repayments far exceeding disbursements**, suggesting incomplete historical data.
- For better context, access to historical debt records and annual trends is recommended.

---
