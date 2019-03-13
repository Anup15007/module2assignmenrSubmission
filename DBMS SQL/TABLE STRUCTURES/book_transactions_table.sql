CREATE TABLE BOOK_TRANSACTIONS (
	book_code number,
	student_code number,
	staff_code number,
	book_issue_date date NOT NULL,
	book_expected_return_date date NOT NULL,
	book_actual_return_date date
);

insert into BOOK_TRANSACTIONS (book_code, student_code, staff_code, book_issue_date, book_expected_return_date)
	VALUES (1001, 7866, 103, TO_DATE('19-08-2018','DD-MM-YYYY'), TO_DATE('17-09-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS
	VALUES (1001, 7868, 101, TO_DATE('24-05-2018','DD-MM-YYYY'), TO_DATE('23-06-2018','DD-MM-YYYY'), TO_DATE('24-06-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS (book_code, student_code, staff_code, book_issue_date, book_expected_return_date)
	VALUES (1001, 7890, 102, TO_DATE('17-08-2018','DD-MM-YYYY'), TO_DATE('17-09-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS (book_code, student_code, staff_code, book_issue_date, book_expected_return_date)
	VALUES (1002, 7598, 102, TO_DATE('20-08-2018','DD-MM-YYYY'), TO_DATE('20-09-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS
	VALUES (1003, 7890, 101, TO_DATE('12-04-2018','DD-MM-YYYY'), TO_DATE('12-05-2018','DD-MM-YYYY'), TO_DATE('12-05-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS
	VALUES (1004, 7866, 103,  TO_DATE('13-05-2018','DD-MM-YYYY'), TO_DATE('13-06-2018','DD-MM-YYYY'), TO_DATE('11-06-2018','DD-MM-YYYY'));
insert into BOOK_TRANSACTIONS (book_code, student_code, staff_code, book_issue_date, book_expected_return_date)
	VALUES (1005, 7598, 101, TO_DATE('05-09-2018','DD-MM-YYYY'), TO_DATE('04-10-2018','DD-MM-YYYY'));
commit;	
	