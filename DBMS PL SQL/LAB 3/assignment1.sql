create or replace function ageComputation(
	dob in date)
	return number IS
	age number(10) := 0;
begin
	select trunc(months_between(sysdate, dob) / 12) into age
	from dual;
	return age;
end;
/

begin
	dbms_output.put_line('Age is: ' || ageComputation(to_date('24-01-1996','DD-MM-YYYY')));
end;
/	