create view Acc_view (CustomerCode, AccountHolderName, AccountNumber, Type, Balance)
	as select Customerid, CustomerName, AccountNumber, AccountType, LedgerBalance
		from accountsmaster;