define lastFriday = "next_day(last_day(sysdate) -7, 'FRIDAY')"
define dateInWords = "to_char(&&lastFriday, 'Ddspth') || ' of ' || to_char(&&lastFriday, 'Month, YYYY')"

select &&dateInWords
	from dual;