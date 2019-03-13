select staff_code, staff_name, design_code, dept_code, hiredate, staff_dob, staff_address, staff_sal
	from staff_master
		where mgr_code is null;