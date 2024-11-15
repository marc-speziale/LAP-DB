CREATE FUNCTION newlap.str2enum$warranty_products_nas$type 
( 
   @setval nvarchar(max)
)
RETURNS tinyint
AS 
   BEGIN
      RETURN 
         CASE @setval
            WHEN 'Ultimate' THEN 1
            WHEN 'Pinnacle' THEN 2
            WHEN 'Powertrain' THEN 3
            WHEN 'Absolute' THEN 4
            ELSE 0
         END
   END

GO

EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'newlap.warranty_products_nas', @level0type = N'SCHEMA', @level0name = N'newlap', @level1type = N'FUNCTION', @level1name = N'str2enum$warranty_products_nas$type';


GO

