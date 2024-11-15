CREATE FUNCTION newlap.enum2str$warranty_products_nas$type 
( 
   @setval tinyint
)
RETURNS nvarchar(max)
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 1 THEN 'Ultimate'
            WHEN 2 THEN 'Pinnacle'
            WHEN 3 THEN 'Powertrain'
            WHEN 4 THEN 'Absolute'
            ELSE ''
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'enum2str$warranty_products_nas$type';


GO

