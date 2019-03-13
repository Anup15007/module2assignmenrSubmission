define fine = '5 * floor(bt.book_expected_return_date-sysdate)';
define returnDate = 'floor(bt.book_expected_return_date - sysdate)';
select s.staff_code, s.staff_name, g.design_name, d.dept_name, bt.book_code, b.book_name, &&fine as "FINE"
	from book_transactions bt
		join staff_master s on s.staff_code = bt.staff_code
		join designation_master g on s.design_code = g.design_code
		join department_master d on s.dept_code = d.dept_code
		join book_master b on bt.book_code = b.book_code
	where bt.book_actual_return_date is null and && returnDate < -1;