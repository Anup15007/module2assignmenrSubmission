select *
	from book_master b
		join book_transactions bt on b.book_code = bt.book_code
			where bt.book_actual_return_date is null
				and ceil(book_expected_return_date - next_day(sysdate-7, 'MONDAY')) = 0;