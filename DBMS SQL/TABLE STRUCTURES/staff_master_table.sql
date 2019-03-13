CREATE TABLE STAFF_MASTER(
	staff_code number(8) NOT NULL,
	staff_name varchar2(50) NOT NULL,
	design_code number,
	dept_code number,
	hiredate date,
	staff_dob date,
	staff_address varchar2(240),
	mgr_code number(8),
	staff_sal number(10,2)
);

insert into staff_master
	values(104, 'Kalra', 2696, 8965, to_date('05-09-2018', 'DD-MM-YYYY'), to_date('23-06-1980', 'DD-MM-YYYY'), 'Talwade', 235, 15000);