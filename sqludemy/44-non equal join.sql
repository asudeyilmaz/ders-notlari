SELECT 
    first_name, last_name, salary, 
    min_salary, max_salary, job_title 
FROM employees e, jobs j
WHERE e.salary BETWEEN j.min_salary AND j.max_salary;