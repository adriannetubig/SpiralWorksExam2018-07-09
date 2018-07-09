CREATE PROCEDURE BankTransferCreate
	@BankTransferId INT = NULL OUTPUT,
	@BankTransactionId INT,
	@SourceAccountNumber INT,
	@TargetAccountNumber INT,
	@Amount MONEY
AS   
BEGIN
	INSERT INTO BankTransfer (BankTransactionId, SourceAccountNumber, TargetAccountNumber, Amount) VALUES (@BankTransactionId, @SourceAccountNumber, @TargetAccountNumber, @Amount);
    SET @BankTransferId = SCOPE_IDENTITY();
END