CREATE FUNCTION newlap.norm_enum$paint_interior_rust_products_rcp$type 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$paint_interior_rust_products_rcp$type(newlap.str2enum$paint_interior_rust_products_rcp$type(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.paint_interior_rust_products_rcp', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$paint_interior_rust_products_rcp$type';


GO

