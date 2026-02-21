-----------------------------------------------------------------------------------------

-- Check for NULLs in each column
SELECT
    COUNT(*) FILTER (WHERE work_year IS NULL) AS work_year_nulls,
    COUNT(*) FILTER (WHERE experience_level IS NULL) AS experience_level_nulls,
    COUNT(*) FILTER (WHERE employment_type IS NULL) AS employment_type_nulls,
    COUNT(*) FILTER (WHERE job_title IS NULL) AS job_title_nulls,
    COUNT(*) FILTER (WHERE salary IS NULL) AS salary_nulls,
    COUNT(*) FILTER (WHERE salary_currency IS NULL) AS salary_currency_nulls,
    COUNT(*) FILTER (WHERE salary_in_usd IS NULL) AS salary_in_usd_nulls,
    COUNT(*) FILTER (WHERE employee_residence IS NULL) AS employee_residence_nulls,
    COUNT(*) FILTER (WHERE remote_ratio IS NULL) AS remote_ratio_nulls,
    COUNT(*) FILTER (WHERE company_location IS NULL) AS company_location_nulls,
    COUNT(*) FILTER (WHERE company_size IS NULL) AS company_size_nulls
FROM some_data_science_jobs_data;

-- All columns checked: dataset contains no NULL values



-----------------------------------------------------------------------

-- inspect all the values in each column to identify any irregular or 
-- unexpected entries, including cases where the same value may 
-- appear with different spellings or formats

-- Work years
SELECT DISTINCT work_year FROM some_data_science_jobs_data ORDER BY work_year;

-- Experience levels
SELECT DISTINCT experience_level FROM some_data_science_jobs_data ORDER BY experience_level;

-- Employment types
SELECT DISTINCT employment_type FROM some_data_science_jobs_data ORDER BY employment_type;

-- Job titles
SELECT DISTINCT job_title FROM some_data_science_jobs_data ORDER BY job_title;

-- Salaries
SELECT DISTINCT salary FROM some_data_science_jobs_data ORDER BY salary;

-- Salary currencies
SELECT DISTINCT salary_currency FROM some_data_science_jobs_data ORDER BY salary_currency;

-- Salaries in USD
SELECT DISTINCT salary_in_usd FROM some_data_science_jobs_data ORDER BY salary_in_usd;

-- Employee residences
SELECT DISTINCT employee_residence FROM some_data_science_jobs_data ORDER BY employee_residence;

-- Remote ratios
SELECT DISTINCT remote_ratio FROM some_data_science_jobs_data ORDER BY remote_ratio;

-- Company locations
SELECT DISTINCT company_location FROM some_data_science_jobs_data ORDER BY company_location;

-- Company sizes
SELECT DISTINCT company_size FROM some_data_science_jobs_data ORDER BY company_size;


-- Note: Some job titles in the list effectively refer to the same core role. 
-- The differences are usually in the level, wording, or focus of 
-- responsibilities, rather than representing entirely distinct positions.
-------------------------------------------------------------------------------------------

