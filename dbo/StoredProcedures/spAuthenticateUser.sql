CREATE PROCEDURE [dbo].[spAuthenticateUser]
	@Username nvarchar(50),
	@Password nvarchar(50),
    @responseMessage NVARCHAR(250)='' OUTPUT
AS

    DECLARE @userID INT

	SET @UserID=(SELECT fldAccountID FROM [dbo].tblAccount 
	WHERE fldAccountUsername=@Username 
	AND fldAccountPassword=HASHBYTES('SHA2_512', @Password+CAST(fldAccountSalt AS NVARCHAR(36)))
	AND fldAccountAccountStatusID = 1
	)
	

       IF(@UserID IS NULL)
           SET @responseMessage='Incorrect password'
       ELSE 
        BEGIN
           SET @responseMessage='User successfully logged in'

           SELECT *
            FROM tblAccount
            WHERE fldAccountID = @UserID

        END

    


RETURN 0

GO

