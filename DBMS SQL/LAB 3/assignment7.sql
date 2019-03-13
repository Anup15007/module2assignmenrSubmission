select distinct b.book_pub_author, b.book_name
	from book_master b
		where b.book_pub_author = (select book_pub_author from book_master group by book_pub_author having count(*)>1 );