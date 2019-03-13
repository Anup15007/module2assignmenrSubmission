select mgr_code, NVL2(count(staff_code),count(staff_code),0)
	from staff_master
		group by mgr_code
			having mgr_code in (select mgr_code from staff_master
									group by mgr_code
										having count(staff_code) = (select max(count(staff_code)) from staff_master
																		group by mgr_code));