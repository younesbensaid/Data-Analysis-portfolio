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

SELECT
    salary_range,
    COUNT(*) AS total_positions
FROM (
    SELECT
        CASE
            WHEN salary_in_usd < 50000 THEN 1
            WHEN salary_in_usd < 100000 THEN 2
            WHEN salary_in_usd < 150000 THEN 3
            WHEN salary_in_usd < 200000 THEN 4
            ELSE 5
        END AS range_order,
        CASE
            WHEN salary_in_usd < 50000 THEN '< 50,000'
            WHEN salary_in_usd < 100000 THEN '50,000 - <100,000'
            WHEN salary_in_usd < 150000 THEN '100,000 - <150,000'
            WHEN salary_in_usd < 200000 THEN '150,000 - <200,000'
            ELSE '>= 200,000'
        END AS salary_range
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
GROUP BY salary_range, range_order
ORDER BY range_order;