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