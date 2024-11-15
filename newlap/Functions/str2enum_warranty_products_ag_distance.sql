CREATE FUNCTION newlap.str2enum$warranty_products_ag$distance 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '40,000 km' THEN 1
            WHEN '100,000 km' THEN 2
            WHEN '160,000 km' THEN 3
            WHEN 'Unlimited km' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ag', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ag$distance';


GO

