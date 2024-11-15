CREATE FUNCTION newlap.enum2str$warranty_products_cgw$term 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '3 month'
            WHEN 2 THEN '6 month'
            WHEN 3 THEN '12 month'
            WHEN 4 THEN '24 month'
            WHEN 5 THEN '36 month'
            WHEN 6 THEN '48 month'
            WHEN 7 THEN '60 month'
            WHEN 8 THEN '72 month'
            WHEN 9 THEN '84 month'
            WHEN 10 THEN '120 month'
            WHEN 11 THEN 'No Time Limit'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgw$term';


GO

