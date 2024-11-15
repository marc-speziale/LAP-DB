CREATE FUNCTION newlap.str2enum$warranty_products_cgw$distance 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '4,000 km' THEN 1
            WHEN '8,000 km' THEN 2
            WHEN '20,000 km' THEN 3
            WHEN '40,000 km' THEN 4
            WHEN '60,000 km' THEN 5
            WHEN '80,000 km' THEN 6
            WHEN '100,000 km' THEN 7
            WHEN '110,000 km' THEN 8
            WHEN '140,000 km' THEN 9
            WHEN '160,000 km' THEN 10
            WHEN '180,000 km' THEN 11
            WHEN '200,000 km' THEN 12
            WHEN 'Unlimited km' THEN 13
            WHEN 'Plus +' THEN 14
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_cgw', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_cgw$distance';


GO

