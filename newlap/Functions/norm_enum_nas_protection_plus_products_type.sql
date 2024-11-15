CREATE FUNCTION newlap.norm_enum$nas_protection_plus_products$type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$nas_protection_plus_products$type(newlap.str2enum$nas_protection_plus_products$type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.nas_protection_plus_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$nas_protection_plus_products$type';


GO

