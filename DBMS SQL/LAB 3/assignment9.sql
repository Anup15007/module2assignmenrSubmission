select s.student_code, s.student_name, d.dept_name
	from student_master s
		join department_master d on s.dept_code = d.dept_code
			where d.dept_code IN (select dept_code
									from student_master
										group by dept_code
											having count(*) = (select max(count(student_code))
																	from student_master
																		group by dept_code));																		