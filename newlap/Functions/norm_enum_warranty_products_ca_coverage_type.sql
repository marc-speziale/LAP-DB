CREATE FUNCTION newlap.norm_enum$warranty_products_ca$coverage_type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$warranty_products_ca$coverage_type(newlap.str2enum$warranty_products_ca$coverage_type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$warranty_products_ca$coverage_type';


GO

