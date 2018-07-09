CREATE PROCEDURE BankAccountCreate
    @AccountNumber INT = NULL OUTPUT   
AS   
BEGIN
	INSERT INTO BankAccount (CreatedDate) VALUES (GETDATE());
    SET @AccountNumber = SCOPE_IDENTITY();
END