DECLARE
V_BONUS V_SAL%TYPE;
V_SAL STAFF_MASTER.STAFF_SAL%TYPE;

BEGIN
SELECT STAFF_SAL INTO V_SAL
FROM STAFF_MASTER 
WHERE MGR_CODE=100006;

V_BONUS:=2*V_SAL;
DBMS_OUTPUT.PUT_LINE('STAFF SALARY IS ' || V_SAL);
DBMS_OUTPUT.PUT_LINE('STAFF BONUS IS ' || V_BONUS);

EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('GIVEN CODE IS NOT VALID.ENTER VALID CODE');
END;


ERRORS:

V_BONUS V_SAL%TYPE;
        *
ERROR at line 2:

ORA-06550: line 2, column 9:
PLS-00320: the declaration of the type of this expression is incomplete or
malformed

ORA-06550: line 2, column 9:
PL/SQL: Item ignored

ORA-06550: line 10, column 1:
PLS-00320: the declaration of the type of this expression is incomplete or
malformed

ORA-06550: line 10, column 1:
PL/SQL: Statement ignored

ORA-06550: line 12, column 43:
PLS-00320: the declaration of the type of this expression is incomplete or
malformed

ORA-06550: line 12, column 1:
PL/SQL: Statement ignored