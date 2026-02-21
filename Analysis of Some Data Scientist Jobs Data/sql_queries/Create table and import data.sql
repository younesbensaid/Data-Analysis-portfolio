
---- Create Some_data_science_jobs_data table
-------------------------------------------------------------
/*
NOTE:
This distribution reflects only the data available in the current dataset I
am working with. It does not necessarily represent an accurate or
comprehensive representation of the actual labor market.
*/

CREATE TABLE Some_data_science_jobs_data (
    work_year INT,
    experience_level TEXT,
    employment_type TEXT,
    job_title TEXT,
    salary  NUMERIC,
    salary_currency TEXT,
    salary_in_usd NUMERIC,
    employee_residence TEXT,
    remote_ratio NUMERIC,
    company_location TEXT,
    company_size TEXT
);

--------------------------------------------------------------

-- Then import csv data into Some_data_science_jobs_data using PSQL TOOL in Postgres

