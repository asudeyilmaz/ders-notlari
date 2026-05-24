CREATE VIEW vw_emp_info AS
SELECT 
    e.employee_id, e.first_name, e.last_name,
    j.job_title, d.department_name
FROM employees e
    INNER JOIN jobs j USING(job_id)
    INNER JOIN departments d USING(department_id);
