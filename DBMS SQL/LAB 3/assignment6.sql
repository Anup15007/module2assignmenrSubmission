select s.staff_code, s.staff_name, s.staff_sal
	from staff_master s
	where s.staff_sal < (select avg(staff_sal)
									from staff_master);