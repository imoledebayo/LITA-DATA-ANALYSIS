## LITA CAPSTONE PROJECT 2024

### Table of content
- [PROJECT OVERVIEW](#project-overview)
- [DATA SOURCE](#data-source)
- [TOOLS](#tools)
- [DATA CLEANING](#data-cleaning)
- [EXPLORATORY DATA ANALYSIS](#exploratory-data-analysis)
- [RESULT](#result)
- [RECOMMENDATION](#recommendation)


### PROJECT OVERVIEW
This data analysis aims to provide insights into the sales and subscription performance of a retail store over the past few years. By analyzing various aspects of the sales data, I intend to find trends, gain a deeper understanding of the company's performance, and give recommendations on how to improve sales. 

<img width="256" alt="Screenshot 2024-11-05 065544" src="https://github.com/user-attachments/assets/0e95f37d-0031-499f-9ac9-114f853d81ea">

### DATA SOURCE
In this project, I will be working on data sets gathered from two retail stores: 
- Wears sales data set
- Subscription data set 

### TOOLS
- Excel: cleaning and generating reports
- SQL: for querying
- Power BI: Visualization

### DATA CLEANING
  
  In the initial preparation phase, i performed the following tasks:
  1. Data loading and inspection
  2. Data cleaning
  3. Handling missing values

### EXPLORATORY DATA ANALYSIS(EDA)
To analyze data in other to achieve insightful information like:
- Total revenue made from each region
- Total revenue by-products
- highest-selling product by total sales value.
- Most sold product
- Monthly and quarterly sales
- Top subscription plan
- Top customers
- Product with low sales

  <img width="210" alt="Screenshot 2024-11-05 065406" src="https://github.com/user-attachments/assets/6d931ef7-5ec0-411c-bb42-058f825b5907">
 
 #### TOTAL NUMBER OF PRODUCT SOLD IN EACH REGION
     SELECT SUM(Quantity) AS TOTALPRODUCT,Region FROM [dbo].[LITA Capstone Sales Dataset] 
      group by Region
       order BY TOTALPRODUCT ASC 
 

### RESULT
The analysis result are summarized as follows:

### RECOMMENDATION

###

