select s.staff_code, s.staff_name, d.dept_name, g.design_name
	from staff_master s
		join department_master d on s.dept_code = d.dept_code
		join designation_master g on s.design_code = g.design_code
			where months_between(sysdate, s.hiredate) <= 3;