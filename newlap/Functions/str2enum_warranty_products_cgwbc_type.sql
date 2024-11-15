CREATE FUNCTION newlap.str2enum$warranty_products_cgwbc$type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Principal' THEN 1
            WHEN 'Plus' THEN 2
            WHEN 'Pinnacle' THEN 3
            WHEN 'Platinum' THEN 4
            WHEN 'Top Up' THEN 5
            WHEN 'Hybrid-Electric' THEN 6
            WHEN 'Hybrid' THEN 7
            WHEN 'Electric' THEN 8
            WHEN 'Platinum Electric' THEN 9
            WHEN 'Platinum Hybrid' THEN 10
            WHEN 'Titanium Exclusionary' THEN 11
            WHEN 'Plus +' THEN 12
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgwbc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_cgwbc$type';


GO

