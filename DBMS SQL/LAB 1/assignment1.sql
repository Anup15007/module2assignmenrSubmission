select staff_name as "STAFF NAME", design_code as "DESIGNATION CODE"
		from staff_master
			where hiredate < '01-JAN-2003'
					and staff_sal between 12000 and 25000;