CREATE FUNCTION newlap.enum2str$warranty_products_ag$term 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '12 month'
            WHEN 2 THEN '24 month'
            WHEN 3 THEN '60 month'
            WHEN 4 THEN '84 month'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_ag', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_ag$term';


GO

