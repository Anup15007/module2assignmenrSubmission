update employee
	set job = (select job from employee where empno=7788),
		deptno = (select deptno from employee where empno=7788)
	where empno = 7698;
		