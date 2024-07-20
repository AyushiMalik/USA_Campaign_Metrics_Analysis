-- Creating a Date dimension table

CREATE TABLE Date_Dimension (
    Date_ID SERIAL PRIMARY KEY,
    Date DATE NOT NULL,
    Day INT NOT NULL,
    Month INT NOT NULL,
    Quarter INT NOT NULL,
    Year INT NOT NULL,
    Weekday VARCHAR(10) NOT NULL
);

-- Creating a Campaign dimension table

CREATE TABLE Campaign_Dimension (
    Campaign_ID SERIAL PRIMARY KEY,
    Campaign_Name VARCHAR(255) NOT NULL,
    Campaign_Type VARCHAR(100),
    Start_Date DATE,
    End_Date DATE,
    Target_Audience VARCHAR(255),
    Budget DECIMAL(10, 2),
    Status VARCHAR(50),
    Cost DECIMAL(10, 2)
);

-- Creating a Hospital dimension table

CREATE TABLE Hospital_Dimension (
    Hospital_ID SERIAL PRIMARY KEY,
    Hospital_Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255),
    Specialty VARCHAR(255),
    Contact_Person VARCHAR(255),
    Email VARCHAR(255)
);

-- Creating a Department dimension table

CREATE TABLE Department_Dimension (
    Department_ID SERIAL PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL
);

-- Creating an Opportunity dimension table 

CREATE TABLE Opportunity_Dimension (
    Opportunity_ID SERIAL PRIMARY KEY,
    Campaign_ID INT REFERENCES Campaign_Dimension(Campaign_ID),
    Opportunity_Type VARCHAR(50),
    Contact_Name VARCHAR(255),
    Contact_Email VARCHAR(255),
    Contact_Phone VARCHAR(20),
    Details TEXT,
    Date_Created DATE,
    Revenue DECIMAL(10, 2)
);

-- Creating a Metrics dimension table

CREATE TABLE Metrics_Dimension (
    Metric_ID SERIAL PRIMARY KEY,
    Metric_Name VARCHAR(50) NOT NULL,
    Description TEXT
);

-- Creating a Campaign Metrics fact table

CREATE TABLE Campaign_Metrics_Fact (
    Campaign_Metrics_ID SERIAL PRIMARY KEY,
    Date_ID INT REFERENCES Date_Dimension(Date_ID),
    Campaign_ID INT REFERENCES Campaign_Dimension(Campaign_ID),
    Hospital_ID INT REFERENCES Hospital_Dimension(Hospital_ID),
    Department_ID INT REFERENCES Department_Dimension(Department_ID),
    Opportunity_ID INT REFERENCES Opportunity_Dimension(Opportunity_ID),
    Metric_ID INT REFERENCES Metrics_Dimension(Metric_ID),
    Metric_Value DECIMAL(10, 2)
);