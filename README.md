# USA_Campaign_data
### Overview
This project involves analyzing campaign metrics to gain insights into the effectiveness of various campaigns, including revenue generation, lead tracking, and opportunity management. The data model includes several tables that track metrics related to campaigns, hospitals, departments, and opportunities. The focus is on querying and analyzing this data to answer critical business questions.

###  Data Model

#### Tables

- **`Date_Dimension`**: Contains date-related information.
- **`Campaign_Dimension`**: Contains details about different campaigns.
- **`Hospital_Dimension`**: Contains information about hospitals participating in the campaigns.
- **`Department_Dimension`**: Contains details about departments within hospitals.
- **`Opportunity_Dimension`**: Tracks various opportunities related to campaigns.
- **`Metrics_Dimension`**: Defines different types of metrics used for analysis.
- **`Campaign_Metrics_Fact`**: Fact table that records the metrics for each campaign, linked to other dimensions.
