drop table suppliers;

create table customermaster(
	customerid number(5) constraint custid_pk primary key,
	customername varchar2(30) not null,
	address1 varchar2(30) not null,
	address2 varchar2(30),
	gender varchar2(1),
	age number(3),
	phoneno number(10)
);
