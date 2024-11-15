CREATE PROCEDURE [dbo].[spResetPassword]
	@FldAccountID int,
	@NewPassword nvarchar(50),
    @responseMessage NVARCHAR(250) = '' OUTPUT
AS
	DECLARE @salt UNIQUEIDENTIFIER=NEWID()
    BEGIN TRY

        UPDATE dbo.tblAccount
		SET fldAccountPassword = HASHBYTES('SHA2_512', @NewPassword+CAST(@salt AS NVARCHAR(36))), 
			fldAccountSalt = @salt,
			fldAccountPasswordLegacy = 0
        WHERE fldAccountID = @FldAccountID

       SET @responseMessage=''

    END TRY
    BEGIN CATCH
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH
RETURN 0

GO

