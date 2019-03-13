select s.staff_code as "Staff#", s.staff_name, d.dept_name as "Mgr#", s.mgr_code, s.mgr_name
	from staff_master s
		join department_master d on d.dept_code= s.dept_code;