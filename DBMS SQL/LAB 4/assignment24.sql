create view accsvw10 
	as select * from accountsmaster
		with read only constraint view_read_only;