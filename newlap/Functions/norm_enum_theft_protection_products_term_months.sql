CREATE FUNCTION newlap.norm_enum$theft_protection_products$term_months 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$theft_protection_products$term_months(newlap.str2enum$theft_protection_products$term_months(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.theft_protection_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$theft_protection_products$term_months';


GO

