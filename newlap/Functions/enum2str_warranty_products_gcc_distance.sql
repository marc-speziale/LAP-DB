CREATE FUNCTION newlap.enum2str$warranty_products_gcc$distance 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN '40000'
            WHEN 2 THEN '60000'
            WHEN 3 THEN '100000'
            WHEN 4 THEN '110000'
            WHEN 5 THEN '160000'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_gcc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_gcc$distance';


GO

