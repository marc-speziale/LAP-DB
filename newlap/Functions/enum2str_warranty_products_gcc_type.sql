CREATE FUNCTION newlap.enum2str$warranty_products_gcc$type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Powertrain'
            WHEN 2 THEN 'Powertrain Plus'
            WHEN 3 THEN 'Top Up'
            WHEN 4 THEN 'Platinum'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_gcc', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_gcc$type';


GO

