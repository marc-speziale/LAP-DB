CREATE FUNCTION newlap.enum2str$warranty_products_ca$term_years 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '3'
            WHEN 2 THEN '4'
            WHEN 3 THEN '5'
            WHEN 4 THEN '6'
            WHEN 5 THEN '7'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ca', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_ca$term_years';


GO

