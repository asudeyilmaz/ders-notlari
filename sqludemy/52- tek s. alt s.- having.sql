-- ıt departmanından daha fazla çalışanı olan departmanlar

select department_id ,
	(select department_name from departments ds where ds.department_id = e.department_id) as dep_name,
	count(*) as emp_num 
from employees e
group by department_id
having count(*) >
	(
		select count(*) from employees e
		where e.department_id = (select department_id from departments d where d.department_name = 'IT')
	)

----- diğer yöntem

select e.department_id ,
	 department_name,
	count(*) as emp_num 
from employees e
inner join departments ds on ds.department_id = e.department_id 
group by e.department_id ,department_name
having count(*) >
	(
		select count(*) from employees e
		where e.department_id = (select department_id from departments d where d.department_name = 'IT')
	)