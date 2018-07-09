CREATE PROCEDURE BankTransactionCreate
	@BankTransactionId INT = NULL OUTPUT,
	@BankTransactionTypeId INT,
	@AccountNumber INT,
	@Amount MONEY
AS   
BEGIN
	INSERT INTO BankTransaction (BankTransactionTypeId, AccountNumber, Amount) VALUES (@BankTransactionTypeId, @AccountNumber, @Amount);
    SET @BankTransactionId = SCOPE_IDENTITY();
END