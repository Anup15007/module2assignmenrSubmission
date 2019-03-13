DECLARE
	userNum number(10);
BEGIN
	userNum := &n;
	IF 
		mod(userNum, 2) = 0
	THEN
		DBMS_OUTPUT.PUT_LINE('THE NUMBER IS EVEN');
	ELSE
		DBMS_OUTPUT.PUT_LINE('THE NUMBER IS ODD');
	END IF;
END;
/

DECLARE 
	userNum number(10);
	countEven number(10) := 0;
	countOdd number(10) := 0;
	counter number(10) := 1;
BEGIN
	userNum := &id;
	WHILE counter <= userNum
		LOOP
			IF 
				mod(counter, 2) = 0
			THEN
				countEven := countEven +1;
			ELSE
				countOdd := countOdd + 1;
			END IF;
			counter := counter + 1;
		END LOOP;

		DBMS_OUTPUT.PUT_LINE('THE NUUMBER ' || userNum || ' CONTAINS '|| countEven || ' EVEN NUMBERS.' );
		DBMS_OUTPUT.PUT_LINE('THE NUUMBER ' || userNum || ' CONTAINS '|| countOdd || ' ODD NUMBERS.' );
END;
/
		 	
	