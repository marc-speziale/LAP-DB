CREATE FUNCTION newlap.str2enum$warranty_products_nas$term 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN '12 month' THEN 1
            WHEN '24 month' THEN 2
            WHEN '36 month' THEN 3
            WHEN '72 month' THEN 4
            WHEN '84 month' THEN 5
            WHEN '96 month' THEN 6
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_nas$term';


GO

