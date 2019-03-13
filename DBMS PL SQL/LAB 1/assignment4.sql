declare
 	employeeRecord employee%rowtype;
begin
	select * into employeeRecord 
	from employee e
	join department_master d on e.deptno = d.deptno
	where ename='&employeename';
	dbms_output.put_line('Employee No: '||employeeRecord.empNo);
	dbms_output.put_line('Employee Name: '||employeeRecord.ename);
	dbms_output.put_line('Department Code: '||employeeRecord.deptno);
	dbms_output.put_line('Department: '||employeeRecord.dept_name);
	dbms_output.put_line('Salary: '||employeeRecord.sal);
	dbms_output.put_line('Hiring Date: '||employeeRecord.hiredate);
end;
/