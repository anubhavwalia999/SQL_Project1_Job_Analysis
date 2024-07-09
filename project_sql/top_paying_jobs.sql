--  Identify the top 10 highest-paying Data Analyst roles that are available remotely.
 -- Focuses on job postings with specified salaries.
-- Why? Aims to highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.

SELECT
job_id,
job_title,
job_location,
job_schedule_type,
salary_year_avg,
job_posted_date,
name as company_name
FROM
    job_postings_fact
left join company_dim on job_postings_fact.company_id=company_dim.company_id
where 
    job_title_short='Data Analyst' and 
    job_location= 'Anywhere' and
    salary_year_avg is NOT NULL
ORDER BY 
    salary_year_avg DESC
limit 10
