CREATE FUNCTION newlap.str2enum$warranty_products_nas$distance 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '20,000 km' THEN 1
            WHEN '40,000 km' THEN 2
            WHEN '60,000 km' THEN 3
            WHEN '120,000km' THEN 4
            WHEN '140,000km' THEN 5
            WHEN '160,000km' THEN 6
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_nas$distance';


GO

