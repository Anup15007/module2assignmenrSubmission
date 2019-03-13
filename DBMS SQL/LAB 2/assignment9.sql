select student_code, student_name, 
	decode(dept_code, 20, 'Electricals', 30, 'Electronics', 'Others') as "Dept Name"
		from student_master
			order by student_code;