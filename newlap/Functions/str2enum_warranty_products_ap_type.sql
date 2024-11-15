CREATE FUNCTION newlap.str2enum$warranty_products_ap$type 
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
            WHEN 'Top Up' THEN 3
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ap', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ap$type';


GO

