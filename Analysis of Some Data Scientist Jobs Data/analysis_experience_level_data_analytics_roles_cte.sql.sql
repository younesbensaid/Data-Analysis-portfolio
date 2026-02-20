/*
File: analysis_experience_level_data_analytics_roles_cte.sql


NOTE:
The experience levels distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
experience levels in analytics roles in general. 


Description:
This query analyzes the distribution of experience levels
for selected Data Analysis and Business Intelligence roles.

Purpose:
To evaluate how experience levels (EN, MI, SE, EX)
are distributed across the data we are working in

SELECTING ALL experience levels JOBS RELATED TO data analytics roles
and grouping by (job-title + exprience level)
and counting the total position for each group
AND EXPORT IT TO CSV IN 
Dataset/exprience-levels-related-to-data-analytics-roles-by-group.csv

AND THEN calculating the total positions for each exprience level
AND EXPORT IT TO CSV FILE IN
Dataset/total_positions-for-each-experience-level.csv
*/

WITH analytics_roles AS (
    SELECT
        job_title,
        experience_level
    FROM some_data_science_jobs_data
    WHERE job_title IN (
        'Analytics Engineer',
        'BI Analyst',
        'BI Data Analyst',
        'BI Developer',
        'Business Data Analyst',
        'Business Intelligence Engineer',
        'Compliance Data Analyst',
        'Data Analyst',
        'Data Analytics Consultant',
        'Data Analytics Engineer',
        'Data Analytics Lead',
        'Data Analytics Manager',
        'Data Analytics Specialist',
        'Data Operations Analyst',
        'Data Quality Analyst',
        'Finance Data Analyst',
        'Financial Data Analyst',
        'Insight Analyst',
        'Lead Data Analyst',
        'Marketing Data Analyst',
        'Power BI Developer',
        'Principal Data Analyst',
        'Product Data Analyst',
        'Staff Data Analyst'
    )
)

SELECT
    job_title,
    experience_level,
    COUNT(*) AS total_positions
FROM analytics_roles
GROUP BY job_title, experience_level
ORDER BY job_title, experience_level;



WITH analytics_roles AS (
    SELECT
        experience_level
    FROM some_data_science_jobs_data
    WHERE job_title IN (
        'Analytics Engineer',
        'BI Analyst',
        'BI Data Analyst',
        'BI Developer',
        'Business Data Analyst',
        'Business Intelligence Engineer',
        'Compliance Data Analyst',
        'Data Analyst',
        'Data Analytics Consultant',
        'Data Analytics Engineer',
        'Data Analytics Lead',
        'Data Analytics Manager',
        'Data Analytics Specialist',
        'Data Operations Analyst',
        'Data Quality Analyst',
        'Finance Data Analyst',
        'Financial Data Analyst',
        'Insight Analyst',
        'Lead Data Analyst',
        'Marketing Data Analyst',
        'Power BI Developer',
        'Principal Data Analyst',
        'Product Data Analyst',
        'Staff Data Analyst'
    )
)

SELECT
    experience_level,
    COUNT(*) AS total_positions
FROM analytics_roles
GROUP BY experience_level
ORDER BY total_positions DESC;
