CREATE FUNCTION newlap.norm_enum$gap_products_cgw$term_months 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$gap_products_cgw$term_months(newlap.str2enum$gap_products_cgw$term_months(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.gap_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$gap_products_cgw$term_months';


GO

