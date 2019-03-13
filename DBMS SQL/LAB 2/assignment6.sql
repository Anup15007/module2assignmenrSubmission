select staff_name, hiredate, to_char(hiredate, 'fmDay') as "DAY"
	from staff_master
		order by mod(to_char(hiredate, 'D') + 5, 7);