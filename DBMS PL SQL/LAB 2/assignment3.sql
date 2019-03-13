select * from user_errors where type='PROCEDURE' and name='FIND_COMM'

create or replace procedure FIND_COMM(
	empCode in employee.empno%TYPE)
is
	empComm employee.comm%TYPE;
	COMM_IS_NULL EXCEPTION;
begin
	select comm into empComm
	from employee
	where empno = empCode;
	IF (empComm IS NULL) THEN
		RAISE COMM_IS_NULL;
	END IF;

EXCEPTION
	WHEN COMM_IS_NULL THEN
		DBMS_OUTPUT.PUT_LINE('The employee with empno ' || empCode || ' has no commission assigned.');
	
end ;
/	

exec FIND_COMM(7369);
/