CREATE PROCEDURE BankTransactionReadBalance
	@AccountNumber INT
AS   
BEGIN
	SELECT
		ISNULL(SUM(CASE WHEN BankTransactionType.IncrementMoney = 1 THEN BankTransaction.Amount ELSE 0 END),0) IncrementAmount,
		ISNULL(SUM(CASE WHEN BankTransactionType.IncrementMoney = 0 THEN BankTransaction.Amount ELSE 0 END),0)  DecreaseAmount
	FROM
		BankTransaction
	INNER JOIN
		BankTransactionType
			ON BankTransaction.BankTransactionTypeId = BankTransactionType.BankTransactionTypeId
	WHERE
		BankTransaction.AccountNumber = @AccountNumber
END