create database job_manage_and_recruit_ats;
use job_manage_and_recruit_ats;

CREATE TABLE Candidates (
    Candidate_ID VARCHAR(10) PRIMARY KEY,
    Candidate_Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Skill VARCHAR(50),
    Experience_Years INT,
    Application_Status VARCHAR(20),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Jobs (
    Job_ID VARCHAR(10) PRIMARY KEY,
    Job_Title VARCHAR(100),
    Department VARCHAR(50),
    Required_Skill VARCHAR(50),
    Min_Experience INT,
    Location VARCHAR(50),
    Job_Status VARCHAR(20)
);

CREATE TABLE Applications (
    Application_ID VARCHAR(10) PRIMARY KEY,
    Candidate_ID VARCHAR(10),
    Job_ID VARCHAR(10),
    Application_Date DATE,
    Status VARCHAR(20),
    Source VARCHAR(50),
    FOREIGN KEY (Candidate_ID) REFERENCES Candidates(Candidate_ID),
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID)
);

CREATE TABLE Interviews (
    Interview_ID VARCHAR(10) PRIMARY KEY,
    Candidate_ID VARCHAR(10),
    Job_ID VARCHAR(10),
    Interview_Date DATE,
    Interviewer VARCHAR(50),
    Interview_Status VARCHAR(20),
    FOREIGN KEY (Candidate_ID) REFERENCES Candidates(Candidate_ID),
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID)
);

INSERT INTO Candidates VALUES
('C001', 'Ankit Sharma', 'ankit@gmail.com', '9876543210', 'Java', 2, 'Applied', 'Bangalore', 'Karnataka', 'India'),
('C002', 'Priya Mehta', 'priya@gmail.com', '9876543211', 'SQL', 1, 'Shortlisted', 'Pune', 'Maharashtra', 'India');

INSERT INTO Applications VALUES
('APP003', 'C002', 'J002', '2024-09-04', 'Applied', 'Company Website');
-- ('APP001', 'C001', 'J001', '2024-10-01', 'Applied', 'LinkedIn'),
-- ('APP002', 'C002', 'J001', '2024-09-03', 'Shortlisted', 'Company Website'),


INSERT INTO Jobs VALUES
('J001', 'Business Analyst', 'Analytics', 'SQL', 1, 'Bangalore', 'Open'),
('J002', 'Data Analyst', 'Analytics', 'Python', 2, 'Delhi', 'Open');

INSERT INTO Interviews VALUES
('I001', 'C001', 'J001', '2024-05-12', 'Hiring Manager', 'Completed'),
('I002', 'C002', 'J002', '2024-06-12', 'HR', 'Completed');

show tables;

select * from Candidates;

select * from Jobs;

select * from Applications;

select * from Interviews;

-- Fetch list of candidates who are shortlisted
SELECT * 
FROM Candidates
WHERE Application_Status = 'Shortlisted';

-- Fetch list of applications received from Company Website
SELECT * 
FROM Applications
WHERE Source = 'Company Website';

-- Count of candidates by application status
SELECT Application_Status, COUNT(*) AS Total_Candidates
FROM Candidates
GROUP BY Application_Status;
 
-- Number of applications per job
SELECT Job_ID, COUNT(*) AS Total_Applications
FROM Applications
GROUP BY Job_ID;

-- Applications by source
SELECT Source, COUNT(*) AS Total_Applications
FROM Applications
GROUP BY Source;

-- Candidates who have interviews scheduled
SELECT DISTINCT Candidate_ID
FROM Interviews;
 
-- Monthly application trend
SELECT MONTH(Application_Date) AS Month, COUNT(*) AS Applications
FROM Applications
GROUP BY MONTH(Application_Date)
ORDER BY Month;
 ⁠
-- Candidates with SQL skill
SELECT Candidate_Name, Skill, Experience_Years
FROM Candidates
WHERE Skill = 'SQL';
 ⁠
-- Open job positions
SELECT Job_Title, Department, Location
FROM Jobs
WHERE Job_Status = 'Open';