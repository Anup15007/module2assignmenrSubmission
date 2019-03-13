CREATE TABLE DEPARTMENT_MASTER (
	dept_code number(2) NOT NULL,
	dept_name varchar2(50)
);

insert into department_master
	values(&dept_code, '&dept_name');

insert into department_master
	values(81, 'JAVA FULLSTACK');
insert into department_master
	values(82, 'BIG DATA');
insert into department_master
	values(83, 'DOTNET');
insert into department_master
	values(84, 'WEB DEVELOPER');
insert into department_master
	values(85, 'JAVA CLOUD');
insert into department_master
	values(86, 'BOA');