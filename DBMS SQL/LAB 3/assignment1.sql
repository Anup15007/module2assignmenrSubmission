select s.staff_name, s.dept_code, d.dept_name, s.staff_sal
	from staff_master s
		join department_master d
			on s.dept_code = d.dept_code
	where s.staff_sal > 20000;