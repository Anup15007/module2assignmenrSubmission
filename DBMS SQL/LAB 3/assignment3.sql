select s.student_code, s.student_name, b.book_code, b.book_name, bt.book_expected_return_date
	from student_master s join book_transactions bt
		on s.student_code = bt.student_code
			join book_master b
				on bt.book_code = b.book_code 
	where floor(sysdate-bt.book_expected_return_date) = 0;		