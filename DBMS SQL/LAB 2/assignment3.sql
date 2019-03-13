define monthsWorked = 'round(months_between(sysdate,hiredate))';

select staff_name "Staff Name", &&monthsWorked "Months Worked" 
	from staff_master
		order by &&monthsWorked DESC;