DECLARE 
	CURSOR empDetails IS
		SELECT * FROM EMP
			WHERE EMPNO = 7369;
			
	empRecord EMP%ROWTYPE;
			
BEGIN
	
	IF empDetails%ISOPEN
	THEN
		null;
	ELSE
		OPEN empDetails;
	END IF;
	
	FETCH empDetails INTO empRecord;
	
	LOOP
		FETCH empDetails INTO empRecord;
		EXIT WHEN empDetails%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(empRecord.ename);
	END LOOP;
END;
/	