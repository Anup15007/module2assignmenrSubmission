DECLARE 
	var_num1 NUMBER := 5;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Value for var_num1:' ||var_num1);
	DECLARE 
		var_num1 NUMBER := 10;
	BEGIN
		DBMS_OUTPUT.PUT_LINE('Value for var_num1:' ||var_num1);
	END;
END;
/