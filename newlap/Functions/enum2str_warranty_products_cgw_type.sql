CREATE FUNCTION newlap.enum2str$warranty_products_cgw$type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Principal'
            WHEN 2 THEN 'Plus'
            WHEN 3 THEN 'Premier'
            WHEN 4 THEN 'Pinnacle'
            WHEN 5 THEN 'Top Up'
            WHEN 6 THEN 'Platinum'
            WHEN 7 THEN 'Gold Pinnacle'
            WHEN 8 THEN 'Silver Plus'
            WHEN 9 THEN 'Bronze Principal'
            WHEN 10 THEN 'Hybrid-Electric'
            WHEN 11 THEN 'Hybrid'
            WHEN 12 THEN 'Electric'
            WHEN 13 THEN 'Platinum Electric'
            WHEN 14 THEN 'Platinum Hybrid'
            WHEN 15 THEN 'Titanium Exclusionary'
            WHEN 16 THEN 'Plus +'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgw$type';


GO

