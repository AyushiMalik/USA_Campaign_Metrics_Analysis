select * from department_dimension;
select * from campaign_dimension;
select * from opportunity_dimension;
select * from hospital_dimension;
select * from metrics_dimension;
select * from date_dimension;
select * from campaign_metrics_fact;

INSERT INTO Department_Dimension (Department_Name)
VALUES
('Gastroenterology'),
('Endocrinology'),
('Neurology'),
('Oncology'),
('Urology');

INSERT INTO Campaign_Dimension (Campaign_Name, Campaign_Type, Start_Date, End_Date, Target_Audience, Budget, Status, Cost)
VALUES
('Summer Health Kickoff', 'Awareness', '2024-06-01', '2024-06-30', 'Adults', 15000, 'Completed', 12000),
('Back-to-School Health Check', 'Engagement', '2024-07-01', '2024-07-31', 'Parents and Children', 18000, 'Active', 8000),
('Autumn Fitness Challenge', 'Conversion', '2024-08-01', '2024-08-31', 'Fitness Enthusiasts', 20000, 'Active', 10000),
('Winter Wellness Fair', 'Awareness', '2024-11-01', '2024-11-30', 'Senior Citizens', 22000, 'Planned', 0),
('Holiday Healthy Eating', 'Engagement', '2024-12-01', '2024-12-31', 'Families', 17000, 'Planned', 0);

INSERT INTO Hospital_Dimension (Hospital_Name, Location, Specialty, Contact_Person, Email)
VALUES
('Greenwood Medical Center', 'City A', 'Orthopedics', 'Dr. James Smith', 'james.smith@greenwood.com'),
('Lakeside Clinic', 'City B', 'Cardiology', 'Dr. Maria Lopez', 'maria.lopez@lakeside.com'),
('Pine Hill Hospital', 'City C', 'Pediatrics', 'Dr. Robert Johnson', 'robert.johnson@pinehill.com'),
('Sunnydale Health Services', 'City D', 'Dentistry', 'Dr. Lisa Williams', 'lisa.williams@sunnydale.com'),
('Broadway Medical Group', 'City E', 'Physiotherapy', 'Dr. David Brown', 'david.brown@broadway.com');

INSERT INTO Metrics_Dimension (Metric_Name, Description) VALUES
('Total Revenue', 'Total revenue generated from the campaign'),
('Number of Leads', 'Total number of leads generated'),
('Number of Registrations', 'Total number of registrations completed'),
('Total Donations', 'Total amount of donations received'),
('Number of Feedbacks', 'Total number of feedback responses received'),
('Survey Completion Rate', 'Percentage of survey completions relative to total participants');


INSERT INTO Date_Dimension (Date, Day, Month, Quarter, Year, Weekday)
VALUES
--June 2024
('2024-06-02', 2, 6, 2, 2024, 'Sunday'),
('2024-06-03', 3, 6, 2, 2024, 'Monday'),
('2024-06-04', 4, 6, 2, 2024, 'Tuesday'),
('2024-06-05', 5, 6, 2, 2024, 'Wednesday'),
('2024-06-06', 6, 6, 2, 2024, 'Thursday'),
('2024-06-07', 7, 6, 2, 2024, 'Friday'),
('2024-06-08', 8, 6, 2, 2024, 'Saturday'),
('2024-06-09', 9, 6, 2, 2024, 'Sunday'),
('2024-06-10', 10, 6, 2, 2024, 'Monday'),
('2024-06-11', 11, 6, 2, 2024, 'Tuesday'),
('2024-06-12', 12, 6, 2, 2024, 'Wednesday'),
('2024-06-13', 13, 6, 2, 2024, 'Thursday'),
('2024-06-14', 14, 6, 2, 2024, 'Friday'),
('2024-06-15', 15, 6, 2, 2024, 'Saturday'),
('2024-06-16', 16, 6, 2, 2024, 'Sunday'),
('2024-06-17', 17, 6, 2, 2024, 'Monday'),
('2024-06-18', 18, 6, 2, 2024, 'Tuesday'),
('2024-06-19', 19, 6, 2, 2024, 'Wednesday'),
('2024-06-20', 20, 6, 2, 2024, 'Thursday'),
-- July 2024
('2024-07-01', 1, 7, 3, 2024, 'Monday'),
('2024-07-02', 2, 7, 3, 2024, 'Tuesday'),
('2024-07-03', 3, 7, 3, 2024, 'Wednesday'),
('2024-07-04', 4, 7, 3, 2024, 'Thursday'),
('2024-07-05', 5, 7, 3, 2024, 'Friday'),
('2024-07-06', 6, 7, 3, 2024, 'Saturday'),
('2024-07-07', 7, 7, 3, 2024, 'Sunday'),
('2024-07-08', 8, 7, 3, 2024, 'Monday'),
('2024-07-09', 9, 7, 3, 2024, 'Tuesday'),
('2024-07-10', 10, 7, 3, 2024, 'Wednesday'),
('2024-07-11', 11, 7, 3, 2024, 'Thursday'),
('2024-07-12', 12, 7, 3, 2024, 'Friday'),
('2024-07-13', 13, 7, 3, 2024, 'Saturday'),
('2024-07-14', 14, 7, 3, 2024, 'Sunday'),
('2024-07-15', 15, 7, 3, 2024, 'Monday'),
('2024-07-16', 16, 7, 3, 2024, 'Tuesday'),
('2024-07-17', 17, 7, 3, 2024, 'Wednesday'),
('2024-07-18', 18, 7, 3, 2024, 'Thursday'),
('2024-07-19', 19, 7, 3, 2024, 'Friday'),
-- August 2024
('2024-08-01', 1, 8, 3, 2024, 'Thursday'),
('2024-08-02', 2, 8, 3, 2024, 'Friday'),
('2024-08-03', 3, 8, 3, 2024, 'Saturday'),
('2024-08-04', 4, 8, 3, 2024, 'Sunday'),
('2024-08-05', 5, 8, 3, 2024, 'Monday'),
('2024-08-06', 6, 8, 3, 2024, 'Tuesday'),
('2024-08-07', 7, 8, 3, 2024, 'Wednesday'),
('2024-08-08', 8, 8, 3, 2024, 'Thursday'),
('2024-08-09', 9, 8, 3, 2024, 'Friday'),
('2024-08-10', 10, 8, 3, 2024, 'Saturday'),
('2024-08-11', 11, 8, 3, 2024, 'Sunday'),
('2024-08-12', 12, 8, 3, 2024, 'Monday'),
('2024-08-13', 13, 8, 3, 2024, 'Tuesday'),
('2024-08-14', 14, 8, 3, 2024, 'Wednesday'),
('2024-08-15', 15, 8, 3, 2024, 'Thursday'),
('2024-08-16', 16, 8, 3, 2024, 'Friday'),
('2024-08-17', 17, 8, 3, 2024, 'Saturday'),
('2024-08-18', 18, 8, 3, 2024, 'Sunday'),
('2024-08-19', 19, 8, 3, 2024, 'Monday'),
-- November 2024
('2024-11-01', 1, 11, 4, 2024, 'Friday'),
('2024-11-02', 2, 11, 4, 2024, 'Saturday'),
('2024-11-03', 3, 11, 4, 2024, 'Sunday'),
('2024-11-04', 4, 11, 4, 2024, 'Monday'),
('2024-11-05', 5, 11, 4, 2024, 'Tuesday'),
('2024-11-06', 6, 11, 4, 2024, 'Wednesday'),
('2024-11-07', 7, 11, 4, 2024, 'Thursday'),
('2024-11-08', 8, 11, 4, 2024, 'Friday'),
('2024-11-09', 9, 11, 4, 2024, 'Saturday'),
('2024-11-10', 10, 11, 4, 2024, 'Sunday'),
('2024-11-11', 11, 11, 4, 2024, 'Monday'),
('2024-11-12', 12, 11, 4, 2024, 'Tuesday'),
('2024-11-13', 13, 11, 4, 2024, 'Wednesday'),
('2024-11-14', 14, 11, 4, 2024, 'Thursday'),
('2024-11-15', 15, 11, 4, 2024, 'Friday'),
('2024-11-16', 16, 11, 4, 2024, 'Saturday'),
('2024-11-17', 17, 11, 4, 2024, 'Sunday'),
('2024-11-18', 18, 11, 4, 2024, 'Monday'),
('2024-11-19', 19, 11, 4, 2024, 'Tuesday'),
-- December 2024
('2024-12-01', 1, 12, 4, 2024, 'Sunday'),
('2024-12-02', 2, 12, 4, 2024, 'Monday'),
('2024-12-03', 3, 12, 4, 2024, 'Tuesday'),
('2024-12-04', 4, 12, 4, 2024, 'Wednesday'),
('2024-12-05', 5, 12, 4, 2024, 'Thursday'),
('2024-12-06', 6, 12, 4, 2024, 'Friday'),
('2024-12-07', 7, 12, 4, 2024, 'Saturday'),
('2024-12-08', 8, 12, 4, 2024, 'Sunday'),
('2024-12-09', 9, 12, 4, 2024, 'Monday'),
('2024-12-10', 10, 12, 4, 2024, 'Tuesday'),
('2024-12-11', 11, 12, 4, 2024, 'Wednesday'),
('2024-12-12', 12, 12, 4, 2024, 'Thursday'),
('2024-12-13', 13, 12, 4, 2024, 'Friday'),
('2024-12-14', 14, 12, 4, 2024, 'Saturday'),
('2024-12-15', 15, 12, 4, 2024, 'Sunday'),
('2024-12-16', 16, 12, 4, 2024, 'Monday'),
('2024-12-17', 17, 12, 4, 2024, 'Tuesday');


INSERT INTO Opportunity_Dimension (Campaign_ID, Opportunity_Type, Contact_Name, Contact_Email, Contact_Phone, Details, Date_Created, Revenue)
VALUES
(1, 'Inquiry', 'Emily White', 'emily.white@example.com', '2345678901', 'Requested information on health kickoff', '2024-06-01', 0),
(1, 'Referral', 'Alexander Davis', 'alexander.davis@example.com', '3456789012', 'Referred by a friend', '2024-06-04', 0),
(1, 'Donation', 'Olivia Brown', 'olivia.brown@example.com', '4567890123', 'Made a donation to support the campaign', '2024-06-07', 300),
(1, 'Follow-Up', 'Sophia Lewis', 'sophia.lewis@example.com', '5678901234', 'Followed up after initial inquiry', '2024-06-11', 0),
(1, 'Lead', 'Ethan Harris', 'ethan.harris@example.com', '6789012345', 'Converted lead from initial outreach', '2024-06-14', 0),
(1, 'Feedback', 'Ava Martinez', 'ava.martinez@example.com', '7890123456', 'Provided feedback on the campaign', '2024-06-18', 0),
(1, 'Registration', 'Mason Thompson', 'mason.thompson@example.com', '8901234567', 'Registered for health kickoff', '2024-06-21', 60),
(1, 'Inquiry', 'Isabella Moore', 'isabella.moore@example.com', '9012345678', 'Inquired about program benefits', '2024-06-23', 0),
(1, 'Lead', 'James Anderson', 'james.anderson@example.com', '0123456789', 'Lead from email marketing', '2024-06-26', 0),
(1, 'Follow-Up', 'Charlotte Clark', 'charlotte.clark@example.com', '1234567890', 'Followed up with new registrants', '2024-06-28', 0),
(1, 'Survey Completion', 'Liam King', 'liam.king@example.com', '2345678901', 'Completed post-campaign survey', '2024-06-29', 0),
(1, 'Feedback', 'Ella Harris', 'ella.harris@example.com', '3456789012', 'Provided detailed feedback', '2024-06-30', 0),

-- Back-to-School Health Check
(2, 'Registration', 'Jackson Miller', 'jackson.miller@example.com', '3456789012', 'Registered for back-to-school check-up', '2024-07-02', 0),
(2, 'Lead', 'Mia Anderson', 'mia.anderson@example.com', '4567890123', 'Lead from social media ad', '2024-07-05', 0),
(2, 'Inquiry', 'Lucas Scott', 'lucas.scott@example.com', '5678901234', 'Inquired about program details', '2024-07-08', 0),
(2, 'Follow-Up', 'Ella Taylor', 'ella.taylor@example.com', '6789012345', 'Followed up with registrants', '2024-07-11', 0),
(2, 'Registration', 'William King', 'william.king@example.com', '7890123456', 'Registered for additional sessions', '2024-07-14', 40),
(2, 'Lead', 'Grace Hall', 'grace.hall@example.com', '8901234567', 'Lead from flyer distribution', '2024-07-17', 0),
(2, 'Feedback', 'Noah Walker', 'noah.walker@example.com', '9012345678', 'Provided feedback on the program', '2024-07-20', 0),
(2, 'Follow-Up', 'Chloe White', 'chloe.white@example.com', '0123456789', 'Followed up on registration status', '2024-07-23', 0),
(2, 'Inquiry', 'Ethan Robinson', 'ethan.robinson@example.com', '1234567890', 'Inquired about session times', '2024-07-26', 0),
(2, 'Survey Completion', 'Amelia Lewis', 'amelia.lewis@example.com', '2345678901', 'Completed survey for feedback', '2024-07-29', 0),
(2, 'Registration', 'Aiden Young', 'aiden.young@example.com', '3456789012', 'Late registration for the check-up', '2024-07-30', 0),
(2, 'Follow-Up', 'Isabella Harris', 'isabella.harris@example.com', '4567890123', 'Followed up after program completion', '2024-07-31', 0),

-- Autumn Fitness Challenge
(3, 'Conversion', 'Noah Wright', 'noah.wright@example.com', '8901234567', 'Converted participant to the challenge', '2024-08-01', 500),
(3, 'Inquiry', 'Charlotte Collins', 'charlotte.collins@example.com', '9012345678', 'Inquired about challenge benefits', '2024-08-04', 0),
(3, 'Feedback', 'James Carter', 'james.carter@example.com', '0123456789', 'Provided feedback after participating', '2024-08-07', 0),
(3, 'Donation', 'Amelia Nelson', 'amelia.nelson@example.com', '1234567890', 'Donated to the fitness challenge', '2024-08-10', 200),
(3, 'Lead', 'Benjamin Moore', 'benjamin.moore@example.com', '2345678901', 'Lead from fitness webinar', '2024-08-13', 0),
(3, 'Follow-Up', 'Lily Robinson', 'lily.robinson@example.com', '3456789012', 'Followed up on participation results', '2024-08-16', 0),
(3, 'Inquiry', 'Sophia Taylor', 'sophia.taylor@example.com', '4567890123', 'Inquired about final results', '2024-08-19', 0),
(3, 'Lead', 'Oliver Smith', 'oliver.smith@example.com', '5678901234', 'Lead from local gym promotion', '2024-08-22', 0),
(3, 'Follow-Up', 'Chloe Johnson', 'chloe.johnson@example.com', '6789012345', 'Followed up on donation requests', '2024-08-25', 0),
(3, 'Feedback', 'Mia Williams', 'mia.williams@example.com', '7890123456', 'Feedback on challenge experience', '2024-08-28', 0),
(3, 'Registration', 'Lucas Martinez', 'lucas.martinez@example.com', '8901234567', 'Late registration for fitness challenge', '2024-08-30', 0),
(3, 'Survey Completion', 'Ella Garcia', 'ella.garcia@example.com', '9012345678', 'Completed post-challenge survey', '2024-08-31', 0),

-- Winter Wellness Fair
(4, 'Survey Completion', 'Zoe Martinez', 'zoe.martinez@example.com', '4567890123', 'Completed wellness fair survey', '2024-11-04', 0),
(4, 'Lead', 'Oliver Johnson', 'oliver.johnson@example.com', '5678901234', 'Interested in winter wellness fair', '2024-11-06', 20),
(4, 'Follow-Up', 'Emily Williams', 'emily.williams@example.com', '6789012345', 'Followed up on survey responses', '2024-11-09', 0),
(4, 'Inquiry', 'Jacob Harris', 'jacob.harris@example.com', '7890123456', 'Inquired about wellness fair events', '2024-11-12', 0),
(4, 'Feedback', 'Mia Clark', 'mia.clark@example.com', '8901234567', 'Provided feedback on wellness fair', '2024-11-15', 0),
(4, 'Lead', 'Daniel Smith', 'daniel.smith@example.com', '9012345678', 'Lead from event promotion', '2024-11-18', 0),
(4, 'Survey Completion', 'Liam Thompson', 'liam.thompson@example.com', '0123456789', 'Completed event feedback survey', '2024-11-20', 0),
(4, 'Follow-Up', 'Isabella Miller', 'isabella.miller@example.com', '1234567890', 'Followed up on event registrations', '2024-11-22', 0),
(4, 'Conversion', 'Emily Wilson', 'emily.wilson@example.com', '2345678901', 'Converted', '2024-11-24', 200);


INSERT INTO Campaign_Metrics_Fact (Date_ID, Campaign_ID, Hospital_ID, Department_ID, Opportunity_ID, Metric_ID, Metric_Value) VALUES
(1, 1, 1, 1, 1, 11, 500.00), 
(62, 4, 2, 5, 44, 13, 45),
(64, 4, 2, 5, 45, 16, 35),
(2, 1, 2, 1, 2, 11, 40),       
(3, 1, 1, 1, 3, 12, 200.00),   
(4, 1, 2, 1, 4, 12, 150),
(5, 1, 2, 1, 6, 16, 19),
(25, 2, 3, 2, 13, 11, 600),
(27, 2, 4, 2, 15, 12, 40),
(29, 2, 4, 2, 17, 11, 400),
(20, 2, 3, 2, 19, 15, 30),
(32, 2, 3, 2, 20, 16, 34),
(33, 2, 4, 2, 25, 15, 89),
(36, 3, 4, 3, 26, 11, 300),
(39, 3, 5, 4, 28, 12, 200),
(43, 3, 4, 3, 32, 14, 500),
(48, 3, 2, 3, 33, 13, 25),
(50, 3, 2, 3, 34, 12, 350),
(53, 3, 3, 4, 35, 11,250),
(58, 4, 2, 5, 38, 12, 300),
(60, 4, 2, 5, 39, 11, 670);







