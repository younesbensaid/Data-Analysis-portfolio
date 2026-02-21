/*
File: analysis-companies-sizes-for-data-analytics-roles.sql


NOTE:
The companies sizes distribution presented in this analysis reflects
only the data available in the current dataset I am working with. This
distribution is not necessarily an accurate or comprehensive
representation of the actual labor market or the true distribution of
companies sizes in analytics roles in general. 


Description:

This set of queries analyzes data analytics roles by grouping them in two ways:
By job_title and company_size to calculate the number of positions and summarize 
salary details for each combination.
By company_size alone to calculate the total number of
positions and summarize salary details for each company size.

Purpose:
To provide a clear overview of how data analytics roles are distributed
across company sizes, both at the job-title level and overall,
along with detailed salary statistics for each group.


STEPS:

grouping by (job_title + company_size)
and counting the total position for each group
and calculating the salaries details for each group
AND EXPORT IT TO CSV IN 
Dataset/companies-sizes-related-to-data-analytics-roles.csv

AND THEN calculating the total positions and
the salary details for each company size
AND EXPORT IT TO CSV FILE IN
Dataset/total-positions-and-salary-details-for-each-company-size.csv
*/

WITH analytics_roles AS (
    SELECT
        job_title,
        company_size,
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
    company_size,
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric, 2) AS median_salary,
    ROUND(MAX(salary_in_usd)::numeric, 2) AS maximum_salary,
    ROUND(MIN(salary_in_usd)::numeric, 2) AS minimum_salary
FROM analytics_roles
GROUP BY job_title, company_size
ORDER BY job_title, company_size;


WITH analytics_roles AS (
    SELECT
        company_size,
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
    company_size,
    COUNT(*) AS total_positions,
    ROUND(AVG(salary_in_usd)::numeric, 2) AS average_salary,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary_in_usd)::numeric, 2) AS median_salary,
    ROUND(MAX(salary_in_usd)::numeric, 2) AS maximum_salary,
    ROUND(MIN(salary_in_usd)::numeric, 2) AS minimum_salary
FROM analytics_roles
GROUP BY company_size
ORDER BY total_positions DESC;