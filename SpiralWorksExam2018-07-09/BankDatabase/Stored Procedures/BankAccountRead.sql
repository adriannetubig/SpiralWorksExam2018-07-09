CREATE PROCEDURE BankAccountRead
AS   
BEGIN
	SELECT
		AccountNumber,
		CreatedDate
	FROM
		BankAccount
END