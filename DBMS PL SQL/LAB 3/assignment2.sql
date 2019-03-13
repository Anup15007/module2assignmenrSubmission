select * from user_errors where type='PROCEDURE' and name='queryStaffManager'

create or replace procedure queryStaffManager(
	staffRecord OUT sys_refCursor)
is
begin
	open staffRecord for select staff_code, staff_name, dept_code, manager_name from staff_master;
end ;
/

variable managerCursor refCursor;
exec queryStaffManager(:managerCursor);
print managerCursor;
/
