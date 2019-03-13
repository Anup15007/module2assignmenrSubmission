DECLARE
	deptCode employee.deptno%TYPE;
	empSal employee.sal%TYPE;	
BEGIN
	deptCode := &deptCode;
	SELECT sal INTO empSal
		FROM employee
			WHERE deptno=deptCode;

	IF (0.3*empSal>=5000) THEN
		DBMS_OUTPUT.PUT_LINE('1');
		empSal := empSal + 5000;
		DBMS_OUTPUT.PUT_LINE(empSal);
	ELSE
		DBMS_OUTPUT.PUT_LINE('2');
		empSal := empSal + 0.3*empSal;
		DBMS_OUTPUT.PUT_LINE(empSal);
	END IF;

	DBMS_OUTPUT.PUT_LINE(deptCode);

	UPDATE employee
	SET sal = empSal
	WHERE deptno = deptCode;

end;
/