CREATE PROCEDURE AccountRead
	@LoginName NVARCHAR(50)
AS   
BEGIN
	SELECT
		ID,
		LoginName,
		AccountNumber,
		Password,
		Balance,
		CreatedDate
	FROM
		Account
	WHERE
		LoginName = @LoginName
END