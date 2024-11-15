CREATE FUNCTION newlap.str2enum$warranty_products_cgw$type 
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
            WHEN 'Premier' THEN 3
            WHEN 'Pinnacle' THEN 4
            WHEN 'Top Up' THEN 5
            WHEN 'Platinum' THEN 6
            WHEN 'Gold Pinnacle' THEN 7
            WHEN 'Silver Plus' THEN 8
            WHEN 'Bronze Principal' THEN 9
            WHEN 'Hybrid-Electric' THEN 10
            WHEN 'Hybrid' THEN 11
            WHEN 'Electric' THEN 12
            WHEN 'Platinum Electric' THEN 13
            WHEN 'Platinum Hybrid' THEN 14
            WHEN 'Titanium Exclusionary' THEN 15
            WHEN 'Plus +' THEN 16
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_cgw$type';


GO

