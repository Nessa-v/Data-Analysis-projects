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
  
- LDCs and IDA nations have **large outstanding debts** which shows potential repayment strain.

---

### 🔻 Bottom 5 Countries with Lowest Disbursements

| Country           | Amount Received | Amount Repaid | Repayment Rate | Red Flag |
|-------------------|------------------|----------------|----------------|----------|
| Turkmenistan       | $0               | $29.1M          | -              | High     |
| Somalia            | $2.46M           | $32.9M          | 1340%          | High     |
| Tonga              | $5.53M           | $10.4M          | 188%           | High     |
| Eritrea            | $7.2M            | $31.1M          | 432%           | High     |
| Solomon Islands    | $8.6M            | $30.7M          | 355%           | High     |

**Insights**:
- These countries are **repaying far more than they borrow**, highlighting restricted credit access or debt distress.
- Most are **developing or small island nations**, with fragile economies and limited capital access.
- Their low disbursement figures may be linked to factors such as political isolation, debt distress, high interest rates due to inflation or a preference for grants over loans by international lenders to prevent worsening debt distress.

---

### 🔻Lowest Principal Repayments
Analysis revealed that all 5 of these countries are repaying significantly less that what they received. It could be due to longer grace periods or difficulty repaying loans.
For more accurate analysis, the data was expanded to 20 countries with lowest repayments, which now included all 5 countries with the lowest disbursements.
It is also worth noting that all these countries are all developing countries, characterised by low income, political instability or limited access to capital markets.

**Insights**:
- These countries might not be receiving new loans due to limited credit access, have extended grace periods to repay their debts or have most of their aid in the form of grants.
- Lenders may avoid offering loans due to their high default risk.
- Countries may be avoiding excessive borrowing to prevent being trapped in more debt, for example Turkmenistan with zero disbursement
- Somalia, Eritrea, and Solomon Islands with low disbursements and high repayments might be focused on repaying old loans.

---

### 💸 Interest-to-Principal Ratios (Top Repayment Countries)

| Country            | Interest:Principal Ratio |
|--------------------|--------------------------|
| South Asia         | 32.61%                   |
| Turkey             | 23.47%                   |
| Russian Federation | 20.87%                   |
| Brazil             | 18.88%                   |
| China              | 18.60%                   |

**Insights**: 
- High Repayment = High Interest Burden: Countries like Mexico ($19.3B), China ($17.9B), and Brazil ($17.0B) lead in interest payments, suggesting they are under debt servicing pressure.
  
- Least Developed Countries (UN classification) appears in the top half of interest payments. Despite their lower income status, they’re still spending billions annually just on interest, which can divert funds from development goals like healthcare or infrastructure.
  
- South Asia and Turkey pay **significantly more interest relative to principal**, indicating higher borrowing costs or older debt.

- The Russian Federation appears with ~$13.9B in interest payments. This confirms earlier observations: Russia is still servicing a large historical debt load, even though recent disbursements are relatively low.

---

### 🔍 Disbursement Source Breakdown

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

"""
