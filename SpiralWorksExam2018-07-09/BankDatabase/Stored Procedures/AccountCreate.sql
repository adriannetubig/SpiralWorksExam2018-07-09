CREATE PROCEDURE AccountCreate
    @ID INT = NULL OUTPUT,
	@LoginName NVARCHAR(50),
	@AccountNumber INT,
	@Password NVARCHAR(50)
AS   
BEGIN
	INSERT INTO Account (LoginName, AccountNumber, Password, Balance) VALUES (@LoginName, @AccountNumber, @Password, 0);
    SET @ID = SCOPE_IDENTITY();
END