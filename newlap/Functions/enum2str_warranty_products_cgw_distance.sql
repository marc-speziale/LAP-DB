CREATE FUNCTION newlap.enum2str$warranty_products_cgw$distance 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '4,000 km'
            WHEN 2 THEN '8,000 km'
            WHEN 3 THEN '20,000 km'
            WHEN 4 THEN '40,000 km'
            WHEN 5 THEN '60,000 km'
            WHEN 6 THEN '80,000 km'
            WHEN 7 THEN '100,000 km'
            WHEN 8 THEN '110,000 km'
            WHEN 9 THEN '140,000 km'
            WHEN 10 THEN '160,000 km'
            WHEN 11 THEN '180,000 km'
            WHEN 12 THEN '200,000 km'
            WHEN 13 THEN 'Unlimited km'
            WHEN 14 THEN 'Plus +'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgw$distance';


GO

