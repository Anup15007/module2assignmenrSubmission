create table AccountsMaster (
	customerid number(5) ,
	AccountNumber Number(10,2) constraint Acc_pk primary key,
	AccountType char(3),
	LedgerBalance number(10,2) not null
);

