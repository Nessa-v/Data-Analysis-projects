## 🔹 Introduction

This analysis explores debt data for 124 countries using SQL to answer key questions on disbursements, repayments, interest payments, and their sources. The primary indicators studied:

- **DT.DIS.DLXF.CD**: New loan disbursements (how much was borrowed)
- **DT.AMT.DLXF.CD**: Principal repayments (how much of the loan was repaid)
- **DT.INT.DLXF.CD**: Interest payments (how much was paid in interest)

The goal: assess **debt servicing pressure**, identify red flags, and recommend actions for debt sustainability.
Note: Debt servicing pressure is the burden on a country’s economy caused by the need to make regular payments on its debt, even when it might not have enough income or reserves to do so easily.
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

**Takeaways**:
- South Asia and China are repaying far more than recent borrowing — likely servicing **old or high-cost debt**.
- LDCs and IDA nations have **large outstanding debts**—watch for future repayment strain.

---

### 🔻 Bottom 5 Countries with Lowest Disbursements

| Country           | Amount Received | Amount Repaid | Repayment Rate | Red Flag |
|-------------------|------------------|----------------|----------------|----------|
| Turkmenistan       | $0               | $29.1M          | -              | High     |
| Somalia            | $2.46M           | $32.9M          | 1340%          | High     |
| Tonga              | $5.53M           | $10.4M          | 188%           | High     |
| Eritrea            | $7.2M            | $31.1M          | 432%           | High     |
| Solomon Islands    | $8.6M            | $30.7M          | 355%           | High     |

**Takeaways**:
- These countries are **repaying far more than they borrow**, highlighting restricted credit access or debt distress.
- Most are **developing or small island nations**, with fragile economies and limited capital access.

---

### 💸 Interest-to-Principal Ratios (Top Repayment Countries)

| Country            | Interest:Principal Ratio |
|--------------------|--------------------------|
| South Asia         | 32.61%                   |
| Turkey             | 23.47%                   |
| Russian Federation | 20.87%                   |
| Brazil             | 18.88%                   |
| China              | 18.60%                   |

**Insight**: South Asia and Turkey pay **significantly more interest relative to principal**, indicating higher borrowing costs or older debt.

---

### 🔍 Disbursement Source Breakdown

- **High disbursement countries** (e.g., China, IDA-only): Borrow from a **diverse mix** including commercial, private, and official creditors.
- **Low disbursement countries** (e.g., Eritrea, Tonga): Rely mostly on **official and multilateral sources** — indicating low risk tolerance by private lenders.

---

## ✅ Conclusion & Recommendations

**High borrowing isn't a problem**—but it must lead to long-term progress. Countries should avoid short-term gains at the cost of long-term distress.

### 📌 Recommendations:

1. **Prioritize Grants Over Loans** – for fragile economies.
2. **Restructure or Improve Credit** – for countries with high repayments and low new loans.
3. **Track Disbursement vs Repayment Trends** – for informed borrowing.
4. **Ensure Lending Transparency** – avoid hidden debt risks.
5. **Use Loans for High-Return Projects** – like infrastructure and health.
6. **Encourage Debt Relief Programs** – for high-debt, low-income nations.

---

## ⚠️ Data Limitations

- Some entries are **regions or institutions**, not countries (e.g., South Asia, IDA).
- Certain countries show **repayments far exceeding disbursements**, suggesting incomplete historical data.
- For full context, access to **historical debt records and annual trends** is recommended.

"""
