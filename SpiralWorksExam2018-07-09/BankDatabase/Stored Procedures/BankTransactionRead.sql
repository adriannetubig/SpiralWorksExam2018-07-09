CREATE PROCEDURE BankTransactionRead
	@AccountNumber INT
AS   
BEGIN
	SELECT
		BankTransaction.BankTransactionId,
		BankTransaction.BankTransactionTypeId,
		BankTransaction.Amount,
		BankTransaction.CreatedDate,
		BankTransactionType.Name BankTransactionType
	FROM
		BankTransaction
	INNER JOIN
		BankTransactionType
			ON BankTransaction.BankTransactionTypeId = BankTransactionType.BankTransactionTypeId
	WHERE
		BankTransaction.AccountNumber = @AccountNumber
END