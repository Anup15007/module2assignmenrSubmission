CREATE TABLE BOOK_MASTER(
	book_code number(10) NOT NULL,
	book_name varchar2(50) NOT NULL,
	book_pub_year number,
	book_pub_author varchar2(50) NOT NULL
);

insert into book_master
	values(1001, 'HARRY POTTER', 1996, 'J K ROWLING');
	
insert into book_master
	values(1002, 'ANNA KARENNINA', 1878, 'LEO TOLSTOY');

insert into book_master
	values(1003, 'TO KILL A MOCKINGBIRD', 1960, 'HARPER LEE');

insert into book_master
	values(1004, 'A PASSSAGE TO INDIA', 1924, 'E M FOSTER');

insert into book_master
	values(1005, 'DON QUIXOTE', 1615, 'MIGUEL DE CERVANTES');
	
insert into book_master
	values(1006, 'HARRY POTTER AND DEATHLY HALLOWS', 2007, 'J K ROWLING');
	
COMMIT;