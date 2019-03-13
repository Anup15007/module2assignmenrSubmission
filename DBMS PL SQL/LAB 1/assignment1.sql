DECLARE
V_Sample1 NUMBER(2);
V_Sample2 CONSTANT NUMBER(2) ;
V_Sample3 NUMBER(2) NOT NULL ;
V_Sample4 NUMBER(2) := 50;
V_Sample5 NUMBER(2) DEFAULT 25;
BEGIN
	DBMS_OUTPUT.PUT_LINE('HELLO');
END;
/

PROBLEMS:
1.  declaration of a constant 'V_SAMPLE2' must contain an initialization assignment
2.	a variable declared NOT NULL must have an initialization assignment