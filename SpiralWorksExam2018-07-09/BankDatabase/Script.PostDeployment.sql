IF NOT EXISTS(SELECT 1 FROM BankTransactionType WHERE Name = 'Withdraw')
BEGIN
	INSERT INTO BankTransactionType
		(BankTransactionTypeId, Name, IncrementMoney)
	VALUES
		(1, 'Withdraw', 0)
END

IF NOT EXISTS(SELECT 1 FROM BankTransactionType WHERE Name = 'Deposit')
BEGIN
	INSERT INTO BankTransactionType
		(BankTransactionTypeId, Name, IncrementMoney)
	VALUES
		(2, 'Deposit', 1)
END

IF NOT EXISTS(SELECT 1 FROM BankTransactionType WHERE Name = 'TranferOut')
BEGIN
	INSERT INTO BankTransactionType
		(BankTransactionTypeId, Name, IncrementMoney)
	VALUES
		(3, 'TranferOut', 0)
END

IF NOT EXISTS(SELECT 1 FROM BankTransactionType WHERE Name = 'TransferIn')
BEGIN
	INSERT INTO BankTransactionType
		(BankTransactionTypeId, Name, IncrementMoney)
	VALUES
		(4, 'TransferIn', 1)
END