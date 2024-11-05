create database LITA_project

select*from [dbo].[LITA Capstone Sales Dataset]

-----TOTAL REVENUE-----

SELECT SUM(REVENUE) AS TOTALREVENUE FROM [dbo].[LITA Capstone Sales Dataset]

------TOTAL REVENUE BY REGION -----

SELECT SUM(REVENUE) AS TOTALREVENUE,Region FROM [dbo].[LITA Capstone Sales Dataset] 
group by Region
order BY TOTALREVENUE ASC 



-----Total number of sales transactions in each region----
SELECT Region, COUNT(ORDER_ID) AS NumberOfTransactions  
FROM[dbo].[LITA Capstone Sales Dataset]  
GROUP BY Region


-------TOTAL NUMBER OF PRODUCT SOLD IN EACH REGION------
SELECT SUM(Quantity) AS TOTALPRODUCT,Region FROM [dbo].[LITA Capstone Sales Dataset] 
group by Region
order BY TOTALPRODUCT ASC 

----- TOTAL REVENUE PER PRODUCT CATEGORY------

SELECT SUM(REVENUE) AS TOTALREVENUE,PRODUCT FROM [dbo].[LITA Capstone Sales Dataset] 
group by PRODUCT
order BY TOTALREVENUE ASC 


-----HIGHEST SELLING PRODUCT BY TOTALSALES VALUE---

SELECT TOP 1 PRODUCT, SUM(REVENUE) AS TotalSales  
FROM  [dbo].[LITA Capstone Sales Dataset] 
GROUP BY PRODUCT  
ORDER BY TotalSales DESC 

-----top 5 customers by total purchase amount-------
SELECT top 5 Customer_Id, SUM(Quantity) AS TOTAL_PURCHASE  
FROM  [dbo].[LITA Capstone Sales Dataset] 
GROUP BY Customer_Id  
ORDER BY TOTAL_PURCHASE DESC

---- monthly sales totals for the current year----

SELECT   MONTH(Order_Date) AS Month,SUM(Revenue) AS TotalSales  
FROM  [dbo].[LITA Capstone Sales Dataset] WHERE  YEAR(Order_Date) = YEAR(GETDATE())  
GROUP BY MONTH(Order_Date)  
ORDER BY Month  

-----PERCENTAGE BY TOTAL SALES IN EACH REGION-----

SELECT Region,  
    SUM(REVENUE) AS TotalSales,  
    (SUM(Revenue) * 100.0 / (SELECT SUM(Revenue) FROM [dbo].[LITA Capstone Sales Dataset])) AS PercentageContribution  
FROM  [dbo].[LITA Capstone Sales Dataset]  
GROUP BY   
    Region 


-----PRODUCT WITH NO SALES------
select product from [dbo].[LITA Capstone Sales Dataset]  where quantity = 0 and revenue = 0





----- CUSTOMER SUBSCRIPTION DATA----
select*from [dbo].[LITA Capstone subscription Dataset]

----- the total number of customers from each region-----
SELECT COUNT(CUSTOMERID)AS TOTAL_NO_OF_CUSTOMERS, REGION FROM [dbo].[LITA Capstone subscription Dataset]
GROUP BY Region

----- most popular subscription type by the number of customers----

SELECT TOP 1 SUBSCRIPTIONTYPE ,COUNT(CUSTOMERID) AS NUMBER_OFCUSTOMERS FROM [dbo].[LITA Capstone subscription Dataset]
GROUP BY SubscriptionType ORDER BY NUMBER_OFCUSTOMERS DESC

SELECT SUBSCRIPTIONTYPE ,COUNT(CUSTOMERID) AS NUMBER_OFCUSTOMERS FROM [dbo].[LITA Capstone subscription Dataset]
GROUP BY SubscriptionType ORDER BY NUMBER_OFCUSTOMERS DESC

-----customers who canceled their subscription within 6 months--------

SELECT CustomerID  
FROM [dbo].[LITA Capstone subscription Dataset]  
WHERE Canceled >= DATEADD(MONTH, -6, GETDATE())

------Average subscription duration for all customers------

SELECT AVG(DATEDIFF(DAY, SubscriptionStart, COALESCE(SubscriptionEnd, 
GETDATE()))) AS Average_SubscriptionDuration  
FROM [dbo].[LITA Capstone subscription Dataset]

-----Total revenue by subscription type-------
select*from [dbo].[LITA Capstone subscription Dataset]

SELECT SUBSCRIPTIONTYPE, SUM(REVENUE) AS TOTAL_REVENUE FROM [dbo].[LITA Capstone subscription Dataset]
GROUP BY SubscriptionType
ORDER BY TOTAL_REVENUE


----- Top 3 regions by subscription cancellations.

SELECT Region, COUNT(*) AS CancellationCount  
FROM[dbo].[LITA Capstone subscription Dataset]  
WHERE CustomerID = 'FALSE'
GROUP BY Region  
ORDER BY CancellationCount DESC  
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY

UPDATE [dbo].[LITA Capstone subscription Dataset]
SET Canceled = BOLEAN