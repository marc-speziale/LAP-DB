CREATE PROCEDURE [dbo].[spAddAccount]
	@UserName nvarchar(50),
	@Password nvarchar(50),
	@FName nvarchar(50),
	@LName nvarchar(50),
	@Email nvarchar(100),
	@Phone nvarchar(50),
	@Fax nvarchar(50),
	@City nvarchar(50),
	@Address1 nvarchar(50),
	@Address2 nvarchar(50),
	@PostalCode nchar(10),
	@ProvinceID int,
	@CompanyName nvarchar(50),
	@AccountStatusID int,
	@DealerID int,
	@responseMessage NVARCHAR(250) = '' OUTPUT
AS
	
	DECLARE @salt UNIQUEIDENTIFIER=NEWID()
    BEGIN TRY

        INSERT INTO dbo.tblAccount (fldAccountFName, 
									fldAccountLName, 
									fldAccountEmail, 
									fldAccountPhone, 
									fldAccountFax, 
									fldAccountCity, 
									fldAccountAddress1, 
									fldAccountAddress2,
									fldAccountPostalCode, 
									fldAccountProvinceID,
									fldAccountCompanyName, 
									fldAccountUsername, 
									fldAccountPassword, 
									fldAccountSalt, 
									fldAccountAccountStatusID,
									fldAccountDealerID,
									fldAccountPasswordLegacy)
        VALUES(@FName, 
				@LName, 
				@Email, 
				@Phone, 
				@Fax, 
				@City, 
				@Address1, 
				@Address2, 
				@PostalCode, 
				@ProvinceID,
				@CompanyName, 
				@UserName, 
				HASHBYTES('SHA2_512', @Password+CAST(@salt AS NVARCHAR(36))), 
				@salt, 
				@AccountStatusID, 
				@DealerID,
				0)

       SET @responseMessage=''

    END TRY
    BEGIN CATCH
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH

RETURN 0

GO

