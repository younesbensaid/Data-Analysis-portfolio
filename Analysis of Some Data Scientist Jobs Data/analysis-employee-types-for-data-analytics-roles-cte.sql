/*
File: analysis-employee-types-for-data-analytics-roles-cte.sql


NOTE:
The employee types distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
employee types in analytics roles in general. 


Description:
This two queries analyzes the distribution of employee types
in data analytics roles

Purpose:
To evaluate how employee types (CT,FL ,FT ,PT )
are distributed across the data we are working in

SELECTING ALL employee JOBS types  RELATED To data analytics roles
and grouping by (job_title + employment_type)
and counting the total position for each group
AND EXPORT IT TO CSV IN 
Dataset/employee-types-related-to-data-analytics-roles-by-group.csv

AND THEN calculating the total positions for each employee type
AND EXPORT IT TO CSV FILE IN
Dataset/total_positions-for-each-employee-type.csv
*/

WITH analytics_roles AS (
    SELECT
        job_title,
        employment_type
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
    employment_type,
    COUNT(*) AS total_positions
FROM analytics_roles
GROUP BY job_title, employment_type
ORDER BY job_title, employment_type;