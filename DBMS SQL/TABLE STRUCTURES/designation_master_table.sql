CREATE TABLE DESIGNATION_MASTER (
	design_code number(3) NOT NULL,
	design_name varchar2(50)
);

insert into DESIGNATION_MASTER
	values(901, 'ANALYST');
insert into DESIGNATION_MASTER
	values(902, 'SR. ANALYST');
insert into DESIGNATION_MASTER
	values(903, 'CONSULTANT');
insert into DESIGNATION_MASTER
	values(904, 'SR. CONSULTANT');
insert into DESIGNATION_MASTER
	values(905, 'MANAGER');
insert into DESIGNATION_MASTER
	values(906, 'SR. MANAGER');
insert into DESIGNATION_MASTER
	values(907, 'DIRECTOR');	
COMMIT;