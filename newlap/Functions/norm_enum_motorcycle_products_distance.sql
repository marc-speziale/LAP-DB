CREATE FUNCTION newlap.norm_enum$motorcycle_products$distance 
( 
   @setval nvarchar(max)
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN newlap.enum2str$motorcycle_products$distance(newlap.str2enum$motorcycle_products$distance(@setval))
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.motorcycle_products', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'norm_enum$motorcycle_products$distance';


GO

