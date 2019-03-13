select dept_code, sum(staff_sal)
	from staff_master
		where mgr_code IS NULL 
			and staff_sal > 20000
		group by dept_code;