update employees e 
set salary = salary *1.2
from jobs j
where j.job_id = e.job_id
	and lower(j.job_title) like '%manager%'

-----------------------------------------------

select *
from employees e
where e.job_id in
	(
		select j.job_id from jobs j
		where lower(j.job_title) like '%manager%'
	)
	
----------------------------------------------------

update employees e 
set salary = salary *1.2
where e.job_id in
	(
		select j.job_id from jobs j
		where lower(j.job_title) like '%manager%'
	)