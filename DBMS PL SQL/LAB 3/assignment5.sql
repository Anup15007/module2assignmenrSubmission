select * from user_errors where type='PROCEDURE' and name='UPDATE_BOOK'

create or replace procedure UPDATE_BOOK(
	bcode in book_transactions.book_code%TYPE,
	scode in book_transactions.staff_code%TYPE)
is
	issueDate date;
	returnDate date;
	
begin
	issueDate := sysdate;
	returnDate := sysdate+10;
	IF (to_char(returnDate, 'fmD') = 1) THEN
		returnDate := returnDate+1;
	ELSIF (to_char(returnDate, 'fmD') = 7) THEN
		returnDate := returnDate+2;
	END IF;

	INSERT INTO book_transactions (book_code, staff_code, book_issue_date, book_expected_return_date)
		VALUES (bcode, scode, issueDate, returnDate);
end ;
/

exec UPDATE_BOOK(1005,103);
/