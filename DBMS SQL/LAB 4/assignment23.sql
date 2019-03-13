create view vAccs_Dtls (CustomerCode, AccountHolderName, AccountNumber, Type, Balance)
	as select *
		from accountsmaster
			where accountnumber = 'IND'
				and ledgerbalance < 10000;