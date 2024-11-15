CREATE FUNCTION newlap.enum2str$warranty_products_cgwbc$term_months 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '3'
            WHEN 2 THEN '6'
            WHEN 3 THEN '12'
            WHEN 4 THEN '24'
            WHEN 5 THEN '36'
            WHEN 6 THEN '48'
            WHEN 7 THEN '60'
            WHEN 8 THEN '72'
            WHEN 9 THEN '84'
            WHEN 10 THEN '120'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgwbc$term_months';


GO

