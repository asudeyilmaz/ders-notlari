-- başka bir tablonun birebir kopyasını oluşturmak
create table managers as
select * from employees
where 1=0 -- data gelmemesi için 1=0

--------------------

insert into managers
select * from employees
where job_id in
	(
		select job_id from jobs
		where lower(job_title) like '%manager%'
	)

select * from managers