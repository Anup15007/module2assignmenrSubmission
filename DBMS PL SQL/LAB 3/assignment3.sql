create or replace function computeCostToCompany(
	scode in staff_master.staff_code%TYPE)
	return number IS
	cost number(10) := 0;
	da number(10) := 0;
	hra number(10) := 0;
	ta number(10) := 0;
	sa number(10) := 0;
	hd date;
	yrs number(10) := 0;
begin
	select staff_sal, hiredate into cost, hd
	from staff_master
	where staff_code = scode;
	da := 0.15 * cost;
	hra := 0.2 * cost;
	ta := 0.08 * cost;
	yrs := (months_between(sysdate, hd) / 12);
	IF (yrs<1) THEN 
		sa := 0.1 * cost;
	ELSIF (yrs >=1 and yrs<2) THEN 
		sa := 0.2 * cost;
	ELSIF (yrs >=2 and yrs<4) THEN 
		sa := 0.3 * cost;
	ELSE
		sa := 0.3 * cost;
	END IF;
	cost := cost + da + hra + ta + sa;
	return cost;
end;
/

begin 
	dbms_output.put_line(computeCostToCompany(104));
end;
/	