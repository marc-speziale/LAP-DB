CREATE FUNCTION newlap.enum2str$warranty_products_cgwbc$type 
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
            WHEN 3 THEN 'Pinnacle'
            WHEN 4 THEN 'Platinum'
            WHEN 5 THEN 'Top Up'
            WHEN 6 THEN 'Hybrid-Electric'
            WHEN 7 THEN 'Hybrid'
            WHEN 8 THEN 'Electric'
            WHEN 9 THEN 'Platinum Electric'
            WHEN 10 THEN 'Platinum Hybrid'
            WHEN 11 THEN 'Titanium Exclusionary'
            WHEN 12 THEN 'Plus +'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_cgwbc$type';


GO

