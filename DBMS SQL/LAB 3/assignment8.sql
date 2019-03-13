select s.staff_code, s.staff_name, d.dept_name
	from staff_master s
		join department_master d on s.dept_code = d.dept_code
			where s.staff_code IN (select s.staff_code 
										from staff_master s
											join book_transactions bt on s.staff_code=bt.staff_code
												group by s.staff_code
													having count(bt.book_code) > 1
										);