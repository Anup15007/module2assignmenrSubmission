define dateJoining = "trim(to_char(hiredate, 'DD'))"
define monthJoining = "trim(to_char(hiredate, 'MM'))"

select *
	from staff_master
		where &&dateJoining <= 15 
			and &&monthJoining = 12;