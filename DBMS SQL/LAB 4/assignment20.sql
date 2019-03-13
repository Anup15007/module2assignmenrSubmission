alter table AccountsMaster 
	drop constraint cust_acc;

alter table AccountsMaster 
	add constraint cust_acc foreign key(customerid) references customermaster(customerid) on delete cascade;