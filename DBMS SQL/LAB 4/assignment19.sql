alter table accountsmaster
	add constraint Balance_Check check (ledgerbalance >5000);