CREATE FUNCTION newlap.enum2str$warranty_products_ap$term 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '12'
            WHEN 2 THEN '24'
            WHEN 3 THEN '36'
            WHEN 4 THEN '60'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ap', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_ap$term';


GO
