alter table AccountsMaster 
	add constraint cust_acc foreign key(customerid) references customermaster(customerid);