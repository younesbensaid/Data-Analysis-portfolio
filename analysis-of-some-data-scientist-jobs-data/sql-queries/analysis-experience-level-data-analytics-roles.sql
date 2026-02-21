/*
File: analysis_experience_level_data_analytics_roles.sql


NOTE:
The experience levels distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
experience levels in analytics roles in general. 


Description:
This queries group data analytics roles by job_title and
experience_level to calculate the number of positions and summarize  
salary details for each group. It also aggregates data by 
experience_level to show total positions and salary statistics per level.

Purpose:
To provide a breakdown of how roles are distributed across 
experience levels in the data, along with salary summaries for each job title–
experience combination and for each experience level overall.

Steps:
grouping by (job_title + experience_level)
and counting the total position for each group,
and the salaries details
AND EXPORT IT TO CSV IN 
Dataset/exprience-levels-related-to-data-analytics-roles-by-group.csv

AND THEN calculating the total positions for each exprience level,
and the salaries details for each experince level
AND EXPORT IT TO CSV FILE IN
Dataset/total_positions-for-each-experience-level.csv
*/

WITH analytics_roles AS (
    SELECT
        job_title,
        experience_level,
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
    experience_level,
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric, 2) AS median_salary,
    ROUND(MAX(salary_in_usd)::numeric, 2) AS maximum_salary,
    ROUND(MIN(salary_in_usd)::numeric, 2) AS minimum_salary
FROM analytics_roles
GROUP BY job_title, experience_level
ORDER BY job_title, experience_level;



WITH analytics_roles AS (
    SELECT
        experience_level,
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
    experience_level,
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric,2
    ) AS median_salary,
    MAX(salary_in_usd) AS maximum_salary,
    MIN(salary_in_usd) AS minimum_salary
FROM analytics_roles
GROUP BY experience_level
ORDER BY median_salary DESC;