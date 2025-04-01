DATA OWNER: VANESSA NWANKWO
PROJECT TITLE: PET SUPPLIES ANALYSIS
DATE CREATED: JULY 2023

PROJECT OBJECTIVE:
This project explores customer repeat purchase behavior and sales distribution using a pet supplies dataset. The goal was to uncover how frequently customers make repeat purchases, how it relates to sales, and what the distribution of sales looks like.

TOOL USED: Microsoft Excel 

THE DATASET:
The 'pet_supplies_2212' dataset was gottend from DataCamp, for the Data Analyst Associate Certification. 
It contains 1500+ rows.
Fields used: repeat_purchase, sales.

QUESTIONS ANSWERED:

ONE: For every column in the data (Data Cleaning):
a. State whether the values match the description given in the table above.
b. State the number of missing values in the column.
c. Describe what you did to make values match the description if they did not match.

Solution:
a.product_id: This column contains unique identifiers for the products and matched the description given in the data table. There were no missing values.

b. category: This column contains values for each category of pet products as stated in the data table. However, 22 values represented as '-' which were unknown were changed to 'Unknown'.

c. animal: This column contains 4 unique values as stated in the data table. No missing values recorded for this column.

d. size: This column contains 3 values for product sizes as given in the data table. However, the cases for the values were different. For instance, the column contains small, SMALL and Small. Hence, the values were changed to sentence case to maintain consistency of the data and match the description in the data table.

e. price: This column contains the prices for the product. To match the description given in the data table, the column was converted to number format using microsoft excel and rounded to 2 decimal places. 150 missing / unlisted values were found and changed to 28.07, the median value for the column.

f. sales: The values are as stated in the data table. No missing values were found. The values were also rounded to 2 decimal places.

g. rating: The values in this column range from 1-9, which is different from what was stated in the data table (1-10). Also, 150 'NA' values were replaced with 0 as stated in the data table.

h. repeat_purchase: The values contained in this column are as stated in the data table. No missing values here.

TWO: Create the following (Data Visualisation and Analysis):
a. visualisation that shows how many products are repeat purchases. 
b. Use the visualization to: 
  i. State which category of the variable repeat purchases has the most observations 
  ii. Explain whether the observations are balanced across categories of the variable repeat           purchases
  
Solution:
Figure 1: [Count of Repeat Purchase.png]

As seen in Figure 1, category '1' has the most observations. There are two categories of the variable repeat purchase, '0' and '1'. 0 being non repeated purchase while 1 means repeated purchase. The categories are unbalanced with category 1 being higher with 906 observations which is quite high compared to 0 with 594 observations. This hints to an increase in sales due to more repeat purchases. However, further analysis is required to determine the success of their sales approach.

THREE: Describe the distribution of all of the sales (Data Description and Visualisation)
Figure 2: [Scatterplot of sales.png]

The scatterplot in Figure 2 was one of the methods used to check for outliers in the sales data. The diagram shows the abscence of outliers as the values are within close range with each other. That is, there are no extreme values.

Figure 3: [sales distribution.png]

Figure 3 shows the sales distribution within upper and lower boundaries and width of 200. The diagram also shows that sales value within 1000 and 1200 had the highest number of observations. While at high sales value within 2200-2400, there were very few observations.

FOUR: Describe the relationship between repeat purchases and sales (Data Visualisation, Exploration and Analysis)
Figure 4: [repeat purchase with sales.png]

Figure 4 reveals that repeated purchases impacted sales. It shows that at the highest sales value (between 2200-2400) the percentage of repeated purchase is 57.14%, compared to 42.86% of non-repeated purchases. At high sales value between 1800-2000, the percentage of repeated purchases is 71.43% compared to 28.57% of non-repeated purchases. Finally, it can be seen that for every range of sales value, there are more repeated purchases. This signifies that more repeated purchases led to increased sales values. However, further analysis should be conducted to determine the relatonship between the repeated purchase of everyday items such as food and Sales.




