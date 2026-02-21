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