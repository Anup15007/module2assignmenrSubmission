define experience = 'trunc(months_between(sysdate,staff_master.hiredate)/12)';

select staff_code, staff_name, dept_code
		from staff_master 
			where &&experience > 18
				order by &&experience DESC;
				
				
				
				
				
Link -> https://stackoverflow.com/questions/5653423/how-do-i-use-variables-in-oracle-sql-developer				