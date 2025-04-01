DATA OWNER: VANESSA NWANKWO
PROJECT TITLE: PET SUPPLIES ANALYSIS
DATE CREATED: JULY 2023

PROJECT OBJECTIVE:
This project explores customer repeat purchase behavior and sales distribution using a pet supplies dataset. The goal was to uncover how frequently customers make repeat purchases, how it relates to sales, and what the distribution of sales looks like.

THE DATASET:
The 'pet_supplies_2212' dataset was gottend from DataCamp, for the Data Analyst Associate Certification. 
It contains 1500+ rows.
Fields used: repeat_purchase, sales.

QUESTIONS ANSWERED:

ONE: For every column in the data.
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

TWO: Create 
a. visualization that shows how many products are repeat purchases. 
b. Use the visualization to: 
  i. State which category of the variable repeat purchases has the most observations 
  ii. Explain whether the observations are balanced across categories of the variable repeat           purchases

 Solution:
 Image: [Count of Repeat Purchase.png]
 

