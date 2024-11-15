CREATE FUNCTION newlap.str2enum$warranty_products_ag$term 
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
            WHEN '60 month' THEN 3
            WHEN '84 month' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ag', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_ag$term';


GO

