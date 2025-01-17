1.) How much does each campaign generate in total revenue?

SELECT Campaign_ID, SUM(Metric_Value) AS Total_Revenue
FROM Campaign_Metrics_Fact
WHERE Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Total Revenue')
GROUP BY Campaign_ID;

2.) How many leads and inquiries are generated for each campaign?

SELECT Campaign_ID, 
       SUM(CASE WHEN Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Leads') THEN Metric_Value ELSE 0 END) AS Total_Leads,
       SUM(CASE WHEN Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Inquiries') THEN Metric_Value ELSE 0 END) AS Total_Inquiries
FROM Campaign_Metrics_Fact
GROUP BY Campaign_ID;

3.) What are the daily metrics for the specified campaign?

SELECT Date_Dimension.Date, 
       SUM(Campaign_Metrics_Fact.Metric_Value) AS Total_Metric_Value
FROM Campaign_Metrics_Fact
JOIN Date_Dimension ON Campaign_Metrics_Fact.Date_ID = Date_Dimension.Date_ID
WHERE Campaign_ID = 2 -- Replace with the desired Campaign_ID
GROUP BY Date_Dimension.Date
ORDER BY Date_Dimension.Date;

4.) What are the monthly trends for the specific campaign?

SELECT Date_Dimension.Year, 
       Date_Dimension.Month, 
       SUM(Campaign_Metrics_Fact.Metric_Value) AS Total_Metric_Value
FROM Campaign_Metrics_Fact
JOIN Date_Dimension ON Campaign_Metrics_Fact.Date_ID = Date_Dimension.Date_ID
WHERE Campaign_ID = 2 -- Replace with the desired Campaign_ID
GROUP BY Date_Dimension.Year, Date_Dimension.Month
ORDER BY Date_Dimension.Year, Date_Dimension.Month;

5.) What is the total revenue generated by each hospital in a campaign?

SELECT Hospital_ID, 
       SUM(Metric_Value) AS Total_Revenue
FROM Campaign_Metrics_Fact
WHERE Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Total Revenue')
  AND Campaign_ID = 3-- Replace with the desired Campaign_ID
GROUP BY Hospital_ID;

6.) What is the average revenue by opportunity type?

SELECT Opportunity_Dimension.Opportunity_Type, 
       AVG(Campaign_Metrics_Fact.Metric_Value) AS Average_Revenue
FROM Campaign_Metrics_Fact
JOIN Opportunity_Dimension ON Campaign_Metrics_Fact.Opportunity_ID = Opportunity_Dimension.Opportunity_ID
WHERE Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Total Revenue')
GROUP BY Opportunity_Dimension.Opportunity_Type;

7.) What is the total metric value by department in a specific campaign?

SELECT Department_ID, 
       SUM(Metric_Value) AS Total_Metric_Value
FROM Campaign_Metrics_Fact
WHERE Campaign_ID = 1 -- Replace with the desired Campaign_ID
GROUP BY Department_ID;

8.) What are the department performance trends over time for a specific campaign?

SELECT Date_Dimension.Year, 
       Date_Dimension.Month, 
       Department_ID, 
       SUM(Metric_Value) AS Total_Metric_Value
FROM Campaign_Metrics_Fact
JOIN Date_Dimension ON Campaign_Metrics_Fact.Date_ID = Date_Dimension.Date_ID
WHERE Campaign_ID = 1 -- Replace with the desired Campaign_ID
GROUP BY Date_Dimension.Year, Date_Dimension.Month, Department_ID
ORDER BY Date_Dimension.Year, Date_Dimension.Month, Department_ID;

9.) What is the Return on Investment(ROI) for a specific campaign?

SELECT Campaign_ID, 
       (SUM(CASE WHEN Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Revenue') THEN Metric_Value ELSE 0 END) - 
        SUM(CASE WHEN Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Cost') THEN Metric_Value ELSE 0 END)) / 
       SUM(CASE WHEN Metric_ID = (SELECT Metric_ID FROM Metrics_Dimension WHERE Metric_Name = 'Cost') THEN Metric_Value ELSE 0 END) AS ROI
FROM Campaign_Metrics_Fact
GROUP BY Campaign_ID;
