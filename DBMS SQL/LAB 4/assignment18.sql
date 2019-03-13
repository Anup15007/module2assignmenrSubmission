alter table accountsmaster
	add constraint at_check check (accounttype in ('NRI','IND'));