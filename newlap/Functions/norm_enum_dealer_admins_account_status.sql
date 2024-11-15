CREATE FUNCTION newlap.norm_enum$dealer_admins$account_status 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$dealer_admins$account_status(newlap.str2enum$dealer_admins$account_status(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.dealer_admins', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$dealer_admins$account_status';


GO

