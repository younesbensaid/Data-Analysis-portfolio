/*
File: analysis-employment-types-for-data-analytics-roles.sql


NOTE:
The employment types distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
employment types in analytics roles in general. 


Description:
This query groups data analytics roles by job_title and
employment_type to calculate the number of positions and summarize  
salary details for each group. It also aggregates data by 
employment type to show total positions and salary statistics per level.

Purpose:
To provide a breakdown of how roles are distributed across 
employment types in the dataset, along with salary summaries for each job title–
employment type combination and for each employment type overall.


STEPS:

grouping by (job_title + employment_type)
and counting the total position for each group
and calculating the salaries details for each group
AND EXPORT IT TO CSV IN 
Dataset/employment-types-related-to-data-analytics-roles-by-group.csv

AND THEN calculating the total positions and
the salary details for each employlent type
AND EXPORT IT TO CSV FILE IN
Dataset/total_positions-for-each-employment-type.csv
*/

WITH analytics_roles AS (
    SELECT
        job_title,
        employment_type,
        salary_in_usd
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
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric, 2) AS median_salary,
    ROUND(MAX(salary_in_usd)::numeric, 2) AS maximum_salary,
    ROUND(MIN(salary_in_usd)::numeric, 2) AS minimum_salary
FROM analytics_roles
GROUP BY job_title, employment_type
ORDER BY job_title, employment_type;

------------------------------------------------------------------

WITH analytics_roles AS (
    SELECT
        employment_type,
        salary_in_usd
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
    employment_type,
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric, 2) AS median_salary,
    ROUND(MAX(salary_in_usd)::numeric, 2) AS maximum_salary,
    ROUND(MIN(salary_in_usd)::numeric, 2) AS minimum_salary
FROM analytics_roles
GROUP BY employment_type
ORDER BY total_positions DESC;