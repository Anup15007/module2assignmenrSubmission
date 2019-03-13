CREATE TABLE STAFF_MASTER_BACK(
	staff_code number(8),
	staff_name varchar2(50),
	design_code number,
	dept_code number,
	hiredate date,
	staff_dob date,
	staff_address varchar2(240),
	mgr_code number(8),
	staff_sal number(10,2)
);

select * from user_errors where type='PROCEDURE' and name='UPDATE_STAFF'

create or replace procedure UPDATE_STAFF(
	scode in staff_master.staff_code%TYPE)
is
	sal number(10) := 0;
	cost number(10) := 0;
	hd date;
	yrs number(10) := 0;
begin
	select staff_sal, hiredate into sal, hd
	from staff_master
	where staff_code = scode;
	yrs := (months_between(sysdate, hd) / 12);
	dbms_output.put_line(yrs);
	IF (yrs < 2) THEN
		null;
	ELSIF (yrs>=2 and yrs<5) THEN
		cost := sal + 0.2 * sal;
		INSERT INTO STAFF_MASTER_BACK
		SELECT * FROM STAFF_MASTER;
		UPDATE STAFF_MASTER
		SET STAFF_SAL = cost
		WHERE STAFF_CODE = scode;
	ELSE
		cost := sal + 0.25 * sal;
		INSERT INTO STAFF_MASTER_BACK
		SELECT * FROM STAFF_MASTER;
		UPDATE STAFF_MASTER
		SET STAFF_SAL = cost
		WHERE STAFF_CODE = scode;
	END IF;
end ;
/

exec UPDATE_STAFF(104);
/