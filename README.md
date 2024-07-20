# USA_Campaign_Metrics_Analysis
### Overview
This project involves analyzing campaign metrics to gain insights into the effectiveness of various campaigns, including revenue generation, lead tracking, and opportunity management. The data model includes several tables that track metrics related to campaigns, hospitals, departments, and opportunities. The focus is on querying and analyzing this data to answer critical business questions.

The primary goal of this project is to analyze and interpret campaign performance data to:
- Understand revenue generation and cost-effectiveness.
- Track lead generation and inquiries.
- Evaluate the performance of hospitals and departments involved in campaigns.
- Assess the distribution and trends of different metrics over time.

###  Data Model

#### Tables

- **`Date_Dimension`**: Contains date-related information.
- **`Campaign_Dimension`**: Contains details about different campaigns.
- **`Hospital_Dimension`**: Contains information about hospitals participating in the campaigns.
- **`Department_Dimension`**: Contains details about departments within hospitals.
- **`Opportunity_Dimension`**: Tracks various opportunities related to campaigns.
- **`Metrics_Dimension`**: Defines different type of metrics used for analysis.
- **`Campaign_Metrics_Fact`**: Fact table that records the metrics for each campaign, linked to other dimensions.

#### Analytical Questions

This project answers various business questions through SQL queries. Here’s an overview of the questions addressed:

1.) How much does each campaign generate in total revenue?

2.) How many leads and inquiries are generated for each campaign?

3.) What are the daily metrics for the specified campaign?
4.) What are the monthly trends for the specific campaign?
5.) What is the total revenue generated by each hospital in a campaign?
6.) What is the average revenue by opportunity type?
7.) What is the total metric value by department in a specific campaign?
8.) What are the department performance trends over time for a specific campaign?
9.) What is the Return on Investment(ROI) for a specific campaign?






