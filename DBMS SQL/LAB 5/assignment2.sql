insert into employee (empno, ename, sal, deptno)
	select empno, ename, sal, deptno
		from emp;