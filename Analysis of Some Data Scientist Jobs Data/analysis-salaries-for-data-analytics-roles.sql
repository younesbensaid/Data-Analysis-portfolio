/*
File: analysis-salaries-for-data-analytics-roles.sql


NOTE:
The salaries distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
salaries in analytics roles in general. 


Description:
This query analyzes salaries within data analytics roles from the data 
by grouping them into defined salary ranges (brackets) to summarize
their distribution across the dataset.

Purpose:
To provide a clear overview of how salaries are distributed within the
dataset by categorizing them into salary brackets 

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