CREATE FUNCTION newlap.enum2str$warranty_products_nas$distance 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '20,000 km'
            WHEN 2 THEN '40,000 km'
            WHEN 3 THEN '60,000 km'
            WHEN 4 THEN '120,000km'
            WHEN 5 THEN '140,000km'
            WHEN 6 THEN '160,000km'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_nas$distance';


GO

