select *
	from book_master
		where book_pub_year between 2001 and 2004
			or book_name LIKE '%&%';